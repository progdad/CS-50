## Internet Protocols 

### Protocol
- A **network protoco**l is an **established set of rules/conventions** that determine how data is transmitted between different devices within the same network. Protocols are just **another type of software**, **hardcoded into operating systems**, ensuring standardized communication across interconnected devices.

### IP (Internet Protocol)
- **The Internet Protocol** is a set of rules for **routing and addressing packets of data** so that they can travel across networks and **arrive at the correct destination**.
- An **IP address** is a unique string of characters that identifies each computer using the Internet Protocol to communicate over a network.
- **#.#.#.#** is the format of IP addresses, where `#` stands for a number between 0 and 255, which means that an IP address is just 32 bits sequence of of numbers, so there's roughly only a bit more than 4*10^9 IP addresses in the world all combined.

### TCP (Transmission Control Protocol)
- TCP **ensures reliable data transmission** by establishing a virtual connection between sender and receiver, facilitating ordered and error-checked delivery of data.
- A **TCP port** is a 16-bit numerical **endpoint on a device**, that **enables the identification of specific network services**. Each port is associated with a unique process or service, which refers to a running program or application handling specific functions, such as a web server (process) providing a website (service).

### DNS (Domain Name System)
- A **domain name** is a unique, easy-to-remember address used to access websites, such as 'google.com', and 'facebook.com'. Users can connect to websites using domain names thanks to the DNS system.
- **DNS** translates **human-friendly domain names** (like www.example.com) **into machine-readable IP addresses** (like 192.168.1.1). This translation is essential for computers to locate and communicate with each other on the Internet, as computers use IP addresses to identify and connect to specific devices.
- **When you enter a domain name** (like www.github.com) into your web browser, your **computer first checks its local DNS cache** to see if it already has the corresponding IP address stored. **If** the information is **not in the local cache** or has expired, **the computer sends a request to the configured DNS server**, which may be provided by your Internet service provider (ISP) or another source.

### Servers and HTTP/HTTPS (Hypertext Transfer Protocol \[Secure\])
- In computing, a **server** is a piece of **computer hardware or software** that provides functionality for other programs or devices, called "clients". This architecture is called the client–server model.
- **HTTP** is an application protocol used for transmitting hypermedia documents, such as **HTML**.
- **HTTP operates as a request-response protocol**, where a client (typically a web browser *on your computer(which is called "client machine")*) sends a request to a server for a specific resource, and the server responds with the requested data or an error message.

### URL building blocks
#### Protocol (https://, ftp://, etc)
- Specifies the protocol used to access the resource. Common schemes include "http," "https," "ftp," etc.
#### Domain (google.com/, github.com/)
- Represents the domain name or IP address of the server hosting the resource.
#### Path (in https://github.com/python/ - "python" is the path) 
- Indicates the specific location or directory on the server where the resource is located.

### HTTP status codes:
- **HTTP status codes** are **three-digit numbers** that indicate **the outcome of an HTTP request** initiated by a **client to a server**. Each status code provides information about the success, failure, or other conditions of the request, that are stored in the headers of HTTP-packets. **These codes are divided into different classes**, where **the first digit defines the general category of the response**, such as 1xx for informational, 2xx for success, 3xx for redirection, 4xx for client errors, and 5xx for server errors.
