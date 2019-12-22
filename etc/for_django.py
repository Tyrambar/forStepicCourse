#from cgi import parse_qs

def django_app(environ, start_response):
        start_response('200 OK', [('Content-Type', 'text/plain')])
        return [bytes(res + '\n', 'ascii') for res in environ['QUERY_STRING'].split('&')]

bind = '0.0.0.0:8000'

