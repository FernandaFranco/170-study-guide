# What HTTP is

HTTP is a set of rules, or protocol, that regulates the relationship between applications and the transfer of hypertext documents. It's an agreement of how machines communicate with each other. Requests and responses follow a standard format that machines can understand. HTTP is also considered stateless, since each pair of request/responses are independent from the previous one. Thus, the server doesn't need to keep track of information between requests and there's no cleanup needed if a request breaks en route.

# The role of a HTTP request is

The client issues a request with information in the form of text to the server. The server can take apart the request and understand what it's asking for because of the agreement in the form of HTTP.

The server that hosts the website handles the request and issues a response back to the client( browser).

# In the other hand, the role of a HTTP response is

The server sends an response back to the client also in the form of strings of text. The role of the browser is to process the response into human friendly content. The browser displays a parsed and processed version of the response.

# Components of a HTTP request?

#### Headers

Name-value pairs sent in plain text. Allows the client to send additional info about the client itself and the resource to be fetched. Some useful headers are Host, Accept-Language, User-Agent and Connection;

#### Method

Tells the server what action to perform on a resource. GET/POST etc;

# Components of a HTTP response?

#### Headers

Name-value pairs sent in plain text. Allows the server to send additional info with response;

#### Status

# Components of a URL:

# Construct a URL with a few params and values

# Difference between GET and POST
- GET is the default method of many links;
- The response to a GET request can be any kind of resource (image,video, HTML), but if it's HTML and it references other resources, the browser will request those automatically;

### When to use GET:
- When retrieving a resource;
- query strings (exposed in the URL, string size limitation);
- Transmit data through the URL;

### When to use POST:
- Send and submit data to the server;
- Initiate some action on the server;
- Submitting a form;
- Sending larger and sensitive data to the server (images/videos);
- Transmit data through the HTTP body;
- Redirects to the page specified in the field Location in the response header;



# Difference between client-side and server-side code?

# Which files in a Sinatra project is client-side and which are server-side?

# How does an HTML form element interact with the server-side code that processes it.

# Why is user-entered content a security risk? Be aware of how to mitigate this risk.

