### 1. Passwords

#### Authentication
**Authentication**: The process of verifying a user's identity, often involving the comparison of entered credentials with stored information on the user. Cryptographic hash functions are commonly used to secure passwords in storage, ensuring that the actual passwords are not stored but rather their irreversible hashes.

#### Authorization
**Authorization**: Following authentication, it determines the access rights granted to an authenticated user based on their identity. Access control lists (ACLs) and role-based access control (RBAC) are common mechanisms used for implementing authorization.

#### Usernames and Passwords
**Usernames and Passwords**: Common credentials for authentication. The **username** identifies the user, and the **password** serves as a secret key. Passwords are ideally hashed and salted before storage, and techniques like key stretching with algorithms such as bcrypt or Argon2 are employed to enhance security.

#### Password dictionaries
**Password dictionaries**: Collections of commonly used passwords. Attackers may use these in **bruteforce attacks** where they systematically try all possible password combinations. To defend against this, systems often implement account lockouts, rate limiting, and CAPTCHAs.

#### Bruteforce attack
**Bruteforce attack**: A method where attackers systematically try all possible password combinations to gain unauthorized access, using automatized bots written in programming languages. Countermeasures include account lockouts, where the account is temporarily suspended after a certain number of failed login attempts.

#### NIST recommendations
**NIST recommendations**: Guidelines provided by the National Institute of Standards and Technology, including the use of long and complex passwords and regular updates. Additionally, NIST recommends the use of multi-factor authentication (MFA) for enhanced security.

### 2. Two-factor authentication

#### Multifactor authentication
**Multifactor authentication (MFA)**: A multi-step account login process that requires users to enter more information than just a password. For example, along with the password, users might be asked to enter a code sent to their email, answer a secret question, or scan a fingerprint.

#### OTP (One-Time Password)
**OTP (One-Time Password)**: A password valid for one session, commonly used with usernames and passwords. OTPs can be generated using time-based algorithms (TOTP) or sent via SMS. Most commonly used for multi-factor authentication of a user, and/or registration/manual data|account renewal, etc. Time synchronization and secure transmission are critical to their effectiveness.

#### Sim swapping
**Sim swapping**: Fraudulently transferring a user's phone number to a different SIM card, often used to bypass **two-factor authentication**. Mobile carriers employ additional security measures to prevent unauthorized SIM swaps, such as requiring in-person verification.

#### Key logging
**Key logging**: The practice of recording keystrokes to capture sensitive information, such as usernames and passwords, using malicious software/malware called "keylogger". Anti-keylogging software and secure input methods can help mitigate this threat.

### 3. Credential stuffing
**Credential stuffing**: An automated cyber attack in which credentials obtained from a data breach on one service are used to attempt to log in to another unrelated service. Multi-factor authentication, IP blocking, and continuous monitoring for suspicious activities are essential countermeasures.

### 4. Social engineering
**Social engineering**: Manipulating individuals into divulging confidential information through psychological tactics. Training programs, awareness campaigns, and strict policies help mitigate the human factor in security breaches.

### 5. MITM attacks

#### Man-in-the-Middle attacks
**MITM attacks**: Intercepting communication between two parties, allowing attackers to eavesdrop, modify, or inject malicious content. Encryption protocols like HTTPS, SSL/TLS, and secure communication channels help prevent MITM attacks.

### 6. Single sign-on

#### Single sign-on (SSO)
**Single sign-on (SSO)**: A centralized authentication process where an existing account (e.g., Google, Facebook, GitHub) is used to authenticate a user on other platforms. OAuth and OpenID Connect are common protocols facilitating secure SSO implementations.

### 7. Password managers

**Password managers**: Tools that securely store and manage passwords, encouraging the use of complex, unique passwords for different accounts. They often include features like password generation, synchronization across devices, and encryption to protect stored credentials.

### 8. Passkeys

**Passkeys**: Short, easy-to-remember codes or phrases used for secure access to systems or services, striking a balance between security and user convenience. Passkeys are often used in conjunction with other factors for multi-factor authentication, providing an additional layer of security.
