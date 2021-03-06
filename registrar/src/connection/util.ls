exports.endpoint-to-string = (endpoint) ->
    # Accept a hostname and a port, then concatenate them together in that
    # order, joined by a colon.
    # For example, `endpointToString '127.0.0.1', 8080` will return the string
    # '127.0.0.1:8080'.
    endpoint.host + \: + endpoint.port

exports.string-to-endpoint = (s) ->
    # Accepts a string of the format '<host>:<port>', such as '127.0.0.1:8080',
    # and returns an endpoint object.
    s_parts = s.split \:

    host: s_parts[0]
    port: parseInt s_parts[1]
