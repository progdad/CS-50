## Web Servers and Web Frameworks
- **Running your own server** means **hosting and managing a computer** that serves as a central hub for processing and delivering web content. This server handles requests from users' browsers, processes the necessary logic, and sends back corresponding responses. 
- **Web frameworks**, such as Python Flask and Django, provide a structured way **to build and organize** web applications. 
- **A framework is an extensive collection of pre-written code**, **similar to a library**, but distinguished by its **larger scope**, serving as a full-fledged foundation of pre-written code for building an entire application. And unlike libraries, **frameworks** usually **provide a higher, wider degree of control over the sets of conventions and rules** on projects structure, naming practices(how to name particular files, functions, variables, etc.), coding style(indentation, formatting), ORM(a technique that enables mapping objects of a programming language, such as classes, methods/functions, and variables to related objects in a database, such as tables, and columns), and more.


## Template Engines and URL Rendering
- **Web frameworks** like Flask and Django utilize **template engines**, such as **Jinja2** and **Django Templates**, to dynamically generate HTML content.
- When a user accesses a specific URL, the **web framework's routing system directs the request to the corresponding view function**. Within the view function, developers fetch data, process logic, and render a specific template. The rendered template, containing dynamic content, is sent as an HTTP response, delivering a dynamic and structured presentation, usually represented as a hypertext template.
- A **template engine** is a software that enables **data transmission (of variables) from the views** of a web app **to its templates**, allowing for the dynamic generation of content by combining the transmitted data with predefined template structures.
- A **URL (Uniform Resource Locator)** is an address that provides **a path to certain files on a server** (e.g., `https://github.com/python` includes the protocol, domain, and additional path information).


