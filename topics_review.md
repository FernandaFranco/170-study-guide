# What HTTP is

HTTP is a set of rules, or protocol, that regulates the relationship between applications and the transfer of documents. It's an agreement of how machines communicate with each other. It's a text-based, stateless protocol for how clients communicate with servers. It's the foundation of the web. Requests and responses follow a standard format that machines can understand. HTTP is also considered stateless, since each pair of request/responses are independent from the previous one. Thus, the server doesn't need to keep track of information between requests and there's no cleanup needed if a request breaks en route.

# The role of a HTTP request is

The client issues a request with information in the form of text to the server. The server can take apart the request and understand what it's asking for because of the agreement in the form of HTTP. Must include a method and a path. May include parameters, headers or body.

The server that hosts the website handles the request and issues a response back to the client (browser).

# In the other hand, the role of a HTTP response is

The server sends an response back to the client also in the form of strings of text. The role of the browser is to process the response into human friendly content. The browser displays a parsed and processed version of the response. Must include a status. May include headers or body.

# Components of a HTTP request?

#### Method - *REQUIRED*

Tells the server what action to perform on a resource. GET and POST are the most common method types. Keep reading for the differences between them.

#### Path - *REQUIRED*

Name of the resource requested. May contain query strings if a GET request.

#### Parameters - *OPTIONAL*


#### Headers - *OPTIONAL*

Name-value pairs sent in plain text. Allows the client to send additional info about the client itself and the resource to be fetched. Some useful headers are Host (required in HTTP 1.1, and typically set by the browser automatically), Accept-Language, User-Agent and Connection;

#### Message body (for POST requests) - *OPTIONAL*



# Components of a HTTP response?

#### Status - *REQUIRED*

Three-digit number and short string of text the server sends back after receiving a request. Most request gets a response, even if it's an error. The status will reflect if the server handled an request successfully or encountered an error.

Some examples are: 200 OK, 302 Redirect, 404 Not Found, 500 Internal Server Error

#### Headers - *OPTIONAL*

Name-value pairs sent in plain text. Allows the server to send additional meta-information with response; Some of them are Content-Encoding, Server, Location, Content-Type (required most of the time).

#### Message Body - *OPTIONAL*

Contains raw response data (HTML, photo etc) the client should render.

# Construct a URL with a few params and values

http://www.bookstore.com:69/nonfiction/biographies/search?author=Darth%20Vader&keyword=fatherhood

# Components of a URL:

#### Scheme (or Protocol)

*http*. Tells the web client to access the resource by making a HTTP request. Other options are git, mailto or ftp.

#### Host

*www.bookstore.com*. Tells the client where the resource is hosted.

#### Port

*:69*. Required if wanting to use a port other than the default :80.

#### Path

*/nonfiction/biographies/search*. Tells what local resource is being requested. If resource is "/" the path is optional.

#### Query String (or Parameters)

*?author=Darth%20Vader&keyword=fatherhood*. String made up of query parameters. Used to send data to the server.

# Difference between GET and POST
- GET is the default method of many links;
- GET is what's used when typing an address in the browser bar;
- The response to a GET request can be any kind of resource (image,video, HTML), but if it's HTML and it references other resources, the browser will request those automatically;

### When to use GET:
- Retrieving a resource from the server;
- Sending query strings (exposed in the URL, string size limitation);
- Using search form (not changing any data on the server);
- Transmit data through the URL;

### When to use POST:
- Send and submit data to the server;
- Initiate some action on the values stored on the server;
- Submitting a form (except search forms);
- Sending larger and sensitive data to the server (images/videos);
- Transmit data through the HTTP body;
- Redirects to the page specified in the field Location in the response header;



# Difference between client-side and server-side code?
#### Client-side:

- render text files to be displayed appropriately to the user

#### Server-side:
- verify user session
- load data from database
- render html (so erb/views is server side!)

# Which files in a Sinatra project is client-side and which are server-side?

#### Server-side:
- Gemfile
Lists dependencies needed to run the program so Bundle can install them.
- Ruby files
Core of the Sinatra application. The Ruby code runs on the server while handling requests.
- View templates
They must be processed on the server before being sent to the client. The generated response will be then sen to the browser to render.

#### Client-side:
- Stylesheets
Interpreted by the browser. Styles the page.
- JavaScript files
Evaluated by the JS interpreter whitin every browser. Adds behavior to the page.
# How does an HTML form element interact with the server-side code that processes it.

when a HTML form is submitted by the user, the browser makes a HTTP request to the path specified in the form's action attribute. The name attribute in the input is sent as a HTTP parameter key, and the input value as the parameter value. Also, the method used will be set as the method form's attribute.

The form can generate a get request, in case of search forms/non-destructive actions, or a post request.

# Why is user-entered content a security risk? Be aware of how to mitigate this risk.

Because of the risk of Cross-site scripting, or XSS. It can happen when users can input text that ends up being displayed directly by the site. The problem is when inputting raw HTML or JavaScript code is allowed, and submitting it to the server. If the server doesn't do any sanitation of input, the content will be injected into the page and the browser will execute it.

A solution to this is to always sanitize user input in the server-side code.
Other option is to disallow HTML and JavaScript user input.
If you do need to display code input by the user, a solution would be to always escape user input data when displaying it (client-side code?), so the browser doesn't interpret as code.

# Start a new Sinatra project and write simple routes to handle requests.

# What are the benefits of using view templates? Be able to use an ERB template in a Sinatra route.

Templates are files that contain text that is converted into HTML before being sent to a user's browser in a response. They're important so we can embed dynamic values (defined in ruby code) into what's sent to the client, instead of a static file.

# What is the session? Where it is stored? How it is used?

# Write a view helper and use it within a view template.

# Explain how redirection works and why it would be needed in a web application.

routes don't have to return html/photo/static files. It can also send the browser to a different url using redirect. The redirect method sets the url in the Location header. We use redirect when:

- creating/updating some data
- user stumble into an inexistent page




