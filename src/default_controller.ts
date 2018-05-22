import { interfaces, controller, httpGet, httpPost, httpPut, httpDelete, requestParam, request as invRequest, response as invResponse } from 'inversify-express-utils';
import { injectable, inject } from 'inversify';
import { Response } from 'express';
import 'reflect-metadata';

@controller('/default')
export default class DefaultController implements interfaces.Controller {

  @httpGet('/')
  public get( @invRequest() request: { user: any }, @invResponse() res: Response) {
    res.status(200).json({ bla: 'test' });
  }

}