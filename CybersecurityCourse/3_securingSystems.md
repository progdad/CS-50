## HTTP
- By default **HTTP protocol doesn't encrypt its packets** and the data travels through the internet in plain text, making it very vulnerable. In such a case potential MITM attackers can easily inject malicious data into the packets, besides, of course, stealing your private information. That's why the secured version of HTTP(HTTPS) is a must-have. 
- While HTTPS does not prevent packet sniffing, the secured version of HTTP encrypts all the data, which is mostly pointless for attackers.
- Another potential threat is that typically web-sites use cookies and the session id is transferred in the web-packets as well, which can easily lead to a session hijacking, if the encryption is not used.

## TLS
- TLS (Transport Layer Security) is a cryptographic protocol that ensures privacy and data integrity between communication applications over a computer network. It achieves this by providing encryption, authentication, and integrity verification. When a server wants to establish a secure connection with a client (e.g., a web browser), it presents a digital certificate. This certificate is issued by a trusted Certificate Authority (CA) and includes information about the server's identity, its public key, the signature of the CA, and details about the cryptographic algorithms used. The client uses this certificate to verify the server's identity and establish a secure connection.
- How it works:
    1. When your browser visits a websites(supposedly over HTTPS), it first downloads the certificate, then calculates a hash value for that certificate.
    2. Then the browser takes a signature from that certificate together with a public key of the CA who issued the certificate. Using the public key translates the signature into a hash value, and if the newly obtained hash value is equal to the hash value from the first step, the browser trusts the certificate and establishes a secure connection with the website. 

## SSL Stripping
- Currently, the majority of websites prioritize secure communication through HTTPS over the less secure HTTP. When a client attempts to access a website using HTTP that operates on HTTPS, the client's browser automatically redirects to the website's HTTPS version. However, this redirection process presents an opportunity for SSL Stripping. In a scenario where an attacker, acting as a malicious Man-in-the-Middle (MiTM), intercepts the communication between the client and the website, they can manipulate the client's requests by altering HTTP to HTTPS. This modification allows the attacker to trick the website into responding to the requests while, on the return path, the attacker strips away the SSL/TLS certificate. Consequently, the attacker gains the ability to intercept and monitor all traffic exchanged between the victim and the ostensibly secured website.

- To counteract such vulnerabilities, websites employ HTTP Strict Transport Security (HSTS). HSTS is a security protocol that instructs web browsers to exclusively use HTTPS rather than HTTP when connecting to a particular website. This essentially limits the window of opportunity for SSL Stripping to the very first request made to the website. Subsequent requests are mandated by the HSTS protocol to use HTTPS. The server-side configuration of a website includes the implementation of HSTS through additional HTTP headers, such as 'max-age' and 'includeSubDomains'

## VPN
- Virtual Private Network is a is a mechanism that establishes a digital connection between your computer and a remote server owned by a VPN provider, creating a point-to-point tunnel that encrypts your personal data, masks your IP address, and lets you sidestep website blocks and firewalls on the internet.

## SSH
- The Secure Shell (SSH) protocol is a method for sending commands securely to a computer over an unsecured network(all the data in between is encrypted by SSH) from another computer remotely.

## Ports
- Network ports are digital identifiers of network applications or services on a computer system. For instance HTTPS-service is on 443th port, HTTP is on 80th port, and so on. 

## Firewall
- A firewall is a network security device that monitors and filters incoming and outgoing network traffic, by filtering what should and should not go through it, depending on how you've configured it, whether "you" are a company with its own LAN, a university, or it's just your home network. Firewall blocks in- and outcoming traffic by IP-addresses, ports, or even Deep Packet Inspection, which is a technology that can read the content of packets going through a firewall.
- A proxy is device/software that sits in between two points in the network, which is basically an MITM("Machine" in this case, not "Man"), and the points communicate through the proxy. 

## Malwares
- A malware is just a malicious software
- A computer virus is a type of malware that, when executed, replicates itself by modifying other computer programs and inserting its own code into those programs. It does require interaction from users.
- Worms are type of malware that work as viruses, but unlike viruses can travel from one computer to another in a network.
- Botnet is a network of bots, that refer to computers, systems, etc usually controlled by a single machine(a host) to perform a specific, usually malicious task. One common example is DDoS attacks, when each node in a botnet sends many requests to a website, which may cause an actual Denial of Service of the attacked server(s). 



