<?php

namespace Fickrr\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class GlobalCache
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $response = $next($request);
		$response->headers->set('Cache-Control: max-age=2592000', 'stale-while-revalidate=86400');
		return $response;
		
		
		
		
    }
}
