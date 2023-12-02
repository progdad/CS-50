## Browsing History and Logs
- Your browser stores the history of your web activity. Websites and services also store **logs about your activity, over which users have less control than over their browsing history**. Keep in mind that while you can **clear your browsing history, you can't clear the logs on the server side (unless you're the owner of the website).**

## HTTP Headers and Fingerprinting
- **HTTP headers contain information about packets, including details about your system, device, preferred language, referrer (the source from which you came to the current website), and more.** Some headers can be changed in a browser. While some changes might inconvenience you, they can enhance your privacy.

## Cookies and Tracking Parameters
- There are different types of cookies. Some enhance user experience, while others, like **third-party cookies or super-cookies, can be invasive, storing lots of private information about users for advertising purposes.** Be cautious and choose services carefully.
- Tracking parameters are URL parameters that track your activity on a website, **primarily for advertising purposes.**

## DNS
- The DNS protocol itself lacks encryption. When your local machine makes a DNS request, your ISP and any middle parties can see what DNS request (to which resource on the Internet) you're making. This can be invasive or even dangerous if the party in the middle is a malicious attacker. To prevent this, use **DoH (DNS over HTTPS) or DoT (DNS over TLS) protocols, which encrypt DNS look-ups.**

## VPN and TOR
- For information on VPNs, refer to the [3_securingSystems.md file](./3_securingSystems.md#vpn).
- **TOR Browser: TOR, which stands for "The Onion Routing," is a browser that makes you practically anonymous by creating a chain of three nodes between you and a web resource. All communication within the chain is encrypted, and each node in the circuit knows only the IP addresses of the previous and next nodes.**

## Permissions
- On every device, whether it's your PC, laptop, or phone, you have control over permissions for the software you use. **These include the camera, voice recording, location, and others.** Be considerate and choose carefully when allowing access to different software.
