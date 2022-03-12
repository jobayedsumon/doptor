<?php

namespace Fickrr\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Throwable  $exception
     * @return void
     *
     * @throws \Exception
     */
    public function report(Throwable $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Throwable  $exception
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @throws \Throwable
     */
	public function render($request, Throwable $e)
    {
        if($this->isHttpException($e))
        {
            switch ($e->getStatusCode()) 
                {
                
                case 404:
                return redirect()->guest('404');
                break;
                case '500':
                return redirect()->guest('404');
                break;
                default:
                    return $this->renderHttpException($e);
                break;
            }
        }
        else
        {
                return parent::render($request, $e);
        }
    } 
    /*public function render($request, Throwable $exception)
    {
	    if ($exception instanceof AccessDeniedHttpException) {
            return view('404');
        }
        return parent::render($request, $exception);
    }*/
}
