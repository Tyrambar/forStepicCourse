from cgi import parse_qs

def application(envir, start_resp):
	start_resp('200 OK', [('Content-Type', 'text/plain')])
	qs = parse_qs(envir['QUERY_STRING'])
	return ['{}={}<br>'.format(res, qs[res][0]) for res in qs]
