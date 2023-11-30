## Phishing
- **Phishing** is usually a **type of a cyber attack** when the attacker copies **hypertext, and JS** of a login/registration(or any other type of form prompting personal information) page of a website(such as of a bank, social medias, and similar) **to replicate the website** and **trick people into compromising their credentials** to a malicious website hosted by an attacker, instead of the real one.

## Code Injection
- **Code injection** is a type of **attack** \[usually\] **on a website** where some **code is inserted into an input field/form** to trick the website into executing the code. Most common examples of that are XSS(Cross-Site Scripting) and SQL Injection.
- Developers should thoroughly validate and sanitize user inputs to ensure they meet expected criteria. This helps prevent code injection attacks such as SQL injection and Cross-Site Scripting (XSS) by ensuring that user inputs are treated as data and not executable code.

## Types of XSS
- **Stored XSS (Persistent XSS)**:
In Stored XSS attacks, malicious scripts are permanently stored on the server, often in databases or files. When users access compromised content, the script is delivered, posing a persistent threat. This commonly occurs in comment sections or forums.
- **Reflected XSS (Non-Persistent XSS)**:
Reflected XSS involves injecting scripts not permanently stored on the server but reflected in the server's response. Users are typically tricked into clicking on malicious links or interacting with compromised input fields, such as search queries or login forms.
- **DOM-Based** XSS:
DOM-Based XSS manipulates the Document Object Model on the client side, executing malicious scripts. It often involves the manipulation of URLs or user input to compromise client-side scripts, making it challenging to detect with traditional server-side security measures.

## Stored XSS Attacks
- **Stored attacks** are those where the injected script is permanently stored on the target servers, such as in a database, in a message forum, visitor log, comment field, etc. The victim then retrieves the malicious script from the server when it requests the stored information. 
- For instance, inserting a malicious code into a message field; this code is stored in the database, and then sent to the recipient; they open the message page, and the browser, interpreting html-code, can potentially execute the script, inserted by the attacker into the input field.
- To prevent XSS attacks developers have to:
    1. Validate and sanitize the input, by replacing special characters, such as `<>`, `&`, `'` and `"` with according escape characters: `&lt;`(<) `&gt;`(>) `&amp;`(&) `&quot;`(") `&apos;`(').
    2. *Even if the input sanitization somehow fails* enforce a Strong Content Security Policy (CSP). Since stored XSS attacks rely on the attacker to include malicious inline `<script>` tags within the page's `<html>` tag, CSPs prevent attacks by implementing the same-origin policy. Content CSP enhances security by allowing only scripts and stylesheets from explicitly defined sources to be executed, disabling any inline scripts in the Document Object Model (DOM). The content security policy is set as a `<meta>` tag within the page's `<head>` element, and can be enabled for \[most commonly\] JS(`script-src`), CSS(`style-src`), and many others.

## SQL Injection
*Look at basics in the basics course [SQL theory section](../TheBasicsCourse/08_SQL/theory8.md#concurrency-control-and-sql-injection)
- Just another type of code injection. There are many kinds of SQL injection, but to prevent the simplest of them(like inserting a part of an SQL query into an input field on a webiste), rely on SQL built-in mechanisms. For instance, instead of using f-strings or format specifiers in the code, like `name = '{input_name}'`, use a question mark `name = ?`, which will handle an input and protect the database from potential SQL injections.

## Client-Side and Server-Side Validation
- All the HTML, CSS, and JS files that are required to for a response to a client are sent from the website's servers to the client's browser, and the local version of the files can be easily changed and manipulated, so all the security checks and the validity of important fields must be validated on the server side. 

## CSRF(Cross-Site Request Forgery)
- CSRF is a type of security vulnerability that occurs when an attacker tricks a user's browser into making an unintended and potentially malicious request to a web application on which the user is authenticated.
- How it works:
    1. The victim is authenticated on a targeted website (e.g., a banking site) and has an active session.
    2. The attacker tricks the victim into visiting a different website controlled by the attacker(*typically by hiding a malicious link on their website, often within forms). *For example, the attacker may hide the link in an input form, and if the victim is simultaneously logged in to their bank (on the website), the user's browser will inadvertently send a malicious request to the bank without the user's knowledge*.
    3. The malicious website, unbeknownst to the victim, makes requests to the targeted website on which the victim is authenticated.
    4. Because the victim is authenticated, the targeted website may consider the requests as legitimate, leading to unintended actions.
- To prevent CSRF attacks, web developers often use techniques like anti-CSRF tokens. These tokens are unique and associated with a user's session, and they must be included in requests to demonstrate that the request is intentional and authorized.

## Arbitrary Code Execution(ACE) and Buffer Overflow
- Arbitrary code execution, put simply, is a vulnerability that allows attackers to inject their own malicious code onto a target system without user awareness or permission.
- Buffer overflow is a security vulnerability that occurs when a program writes more data to a block of memory, or buffer, than it was allocated for, leading to the overflow of excess data into adjacent memory locations. This can result in the corruption of data, unintended code execution, and potential exploitation by attackers. By carefully crafting input, attackers can manipulate the program's behavior, injecting malicious code into the system. Buffer overflow vulnerabilities are a serious threat to the security of software systems, and robust coding practices, input validation, and memory protection mechanisms are crucial for prevention.

## App Stores
- Well-known, trusted app stores, for instance such as "Google Play", and "Apple Store", mostly don't let any malicious software be stored on their platforms.
- Most importantly, app stores usually use asymmetric cryptography to identify the author of a software and thus prevent any act of impersonation by requiring digitally signed software by the author. And the stores themselves using their private keys, create a digital signature, that implies the source of a program is a well-trusted one, when users download their programs onto their phone.


***Nowadays most of the software, systems, platforms, etc strive for keeping up with cybersec best practices, so, for instance, asymmetric cryptography is used practically everywhere for secure communication, and source validation(signatures).***