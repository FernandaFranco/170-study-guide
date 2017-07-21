# What HTTP is

HTTP is a set of rules, or protocol, that regulates the relationship between applications and the transfer of hypertext documents. It's an agreement of how machines communicate with each other. Requests and responses follow a standard format that machines can understand. HTTP is also considered stateless, since each pair of request/responses are independent from the previous one. Thus, the server doesn't need to keep track of information between requests and there's no cleanup needed if a request breaks en route.

# The role of a HTTP request is

The client issues a request with information in the form of text to the server. The server can take apart the request and understand what it's asking for because of the agreement in the form of HTTP.

The server that hosts the website handles the request and issues a response back to the client( browser).

# In the other hand, the role of a HTTP response is

The server sends an response back to the client also in the form of strings of text. The role of the browser is to process the response into human friendly content. The browser displays a parsed and processed version of the response.

# Components of a HTTP request?

#### Method - *REQUIRED*

Tells the server what action to perform on a resource. GET and POST are the most common method types. Keep reading for the differences between them.

#### Path - *REQUIRED*

Name of the resource requested. May contain query strings if a GET request.

#### Headers

Name-value pairs sent in plain text. Allows the client to send additional info about the client itself and the resource to be fetched. Some useful headers are Host, Accept-Language, User-Agent and Connection;

#### Message body (for POST requests)



# Components of a HTTP response?

#### Status

Three-digit number the server sends back after receiving a request. Most request gets a response, even if it's an error. The status will reflect if the server handled an request successfully or encountered an error.

Some examples are: 200 OK, 302 Redirect, 404 Not Found, 500 Internal Server Error

#### Headers

Name-value pairs sent in plain text. Allows the server to send additional meta-information with response; Some of them are Content-Encoding, Server, Location, Content-Type.

#### Message Body

Contains raw response data (HTML, photo etc)


# Construct a URL with a few params and values

http://www.bookstore.com:69/nonfiction/biographies/search?author=Darth%20Vader&keyword=Empire

# Components of a URL:

#### Scheme

*http*. Tells the web client to access the resource by making a HTTP request. Other options are git, mailto or ftp.

#### Host

*www.bookstore.com*. Tells the client where the resource is hosted.

#### Port

*:69*. Required if wanting to use a port other than the default :80.

#### Path

*/nonfiction/biographies/search*. Tells what local resource is being requested. If resource is "/" the path is optional.

#### Query String

*?author=Darth%20Vader&keyword=Empire*. String made up of query parameters. Used to send data to the server.

# Difference between GET and POST
- GET is the default method of many links;
- GET is what's used when typing an address in the browser bar;
- The response to a GET request can be any kind of resource (image,video, HTML), but if it's HTML and it references other resources, the browser will request those automatically;

### When to use GET:
- Retrieving a resource;
- Sending query strings (exposed in the URL, string size limitation);
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

Because of the risk of Cross-site scripting, or XSS. It can happen when users can input text that ends up being displayed directly by the site. The problem is when inputting raw HTML or JavaScript code is allowed, and submitting it to the server. If the server doesn't do any sanitation of input, the content will be injected into the page and the browser will execute it.

A solution to this is to always sanitize user input in the server-side code.
Other option is to disallow HTML and JavaScript user input.
If you do need to display code input by the user, a solution would be to always escape user input data when displaying it (client-side code?), so the browser doesn't interpret as code.


