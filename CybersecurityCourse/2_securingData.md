### 1. Hashing

- **Hashing**: A process that transforms input data into a fixed-size string of characters(using an hash hash-function), known as a hash. In terms of data security it's crucial to store users' passwords hashed.
- **Rainbow Tables**: A precomputed table for caching the outputs of a cryptographic hash function, usually for cracking password hashes. Precomputed tables that speed up the process of cracking hashed passwords. Pertinent to password security, highlighting the need for additional measures like salting to defend against precomputed table attacks.
- **Salting**: Adding a unique, random value to each password before hashing to enhance security. Essential for password hashing to thwart rainbow table attacks, commonly employed in secure password storage systems.
- **One-way Hash Functions**: Hash functions designed to be irreversible, making it computationally infeasible to obtain the original input from the hash.

### 2. Cryptography and Digital Keys

- **Codes**: A historical method less commonly used in modern cryptography due to vulnerabilities. Codes involve substituting words or phrases for other words or phrases, often used in a simple and direct way that may lack strong security properties.
- **Ciphers**: Algorithms used for encryption and decryption in symmetric-key cryptography, where the same key is used for both processes. Ciphers systematically encode each character of plain text into a corresponding encoded character.
- **Encrypt and Decrypt**: Encrypting(or enciphering, but "enciphering" is a specific step or action within the broader process of "encryption.") involves converting plain text to ciphertext for secure transmission or storage, and decrypting involves converting ciphertext back to plain text.
- **Keys**: Sequences of numbers or characters used in cryptographic algorithms for encryption and decryption. Keys play a central role in securing communication and data.
- **Symmetric-key Cryptography**: In symmetric-key cryptography, the same key is used for both encryption and decryption. This shared secret key must be kept confidential between communicating parties. Symmetric key algorithms are efficient for encrypting and decrypting large amounts of data quickly.
- **Asymmetric-key Cryptography** (The opposite of symmetric-key cryptography: requires two different keys):
    - **Public Key**: In asymmetric-key cryptography, the public key is shared openly and is used for encryption of the data. It can be freely distributed, allowing anyone to encrypt messages or data that can only be decrypted by the corresponding private key.
    - **Private Key**: The counterpart to the public key in asymmetric-key cryptography. Kept confidential, the private key is used for decrypting messages or data that were encrypted with the corresponding public key. Access to the private key is crucial for maintaining the security of the communication.
- **Cryptanalysis, AES, and DES**: Techniques and algorithms relevant to symmetric-key cryptography. AES (Advanced Encryption Standard) is commonly used for secure data transmission. DES (Data Encryption Standard) is an older symmetric-key encryption algorithm.
- **NIST Recommendations on Securing Passwords with Hash Functions**: Pertains to password security, emphasizing the importance of hashing functions in protecting user credentials.

### 3. Digital Signatures

- **Digital Signatures Overview**: A digital signature, a specialized form of electronic signature (e-signature), depends on public-key cryptography for identity verification and ensuring the integrity of data and transactions.

  - **Signature Generation Process**:
    1. **Data Hashing**: Initially, specific data undergoes encryption using a hash algorithm, resulting in a hash value—a fixed-size string of characters representing the data's content.
    2. **Digital Signature Creation**: The hash value is further encrypted with the sender's private key, resulting in the digital signature. This signature is a uniquely encrypted hash value that combines the data and the sender's identity.
    3. **Transmission**: The digital signature is sent to any peer on the Internet along with the original data.

  - **Verification Process by Recipient**:
    1. The recipient uses the sender's public key to decrypt the digital signature, revealing the original hash value.
    2. Independently, the recipient hashes the received data using the same algorithm, generating a new hash value.
    3. If the decrypted hash value matches the newly generated hash value, the digital signature is authenticated, confirming the sender's identity and the data's integrity.

- Passkeys and the login process works with them(as an example - github keys for SSH connection).

### 4. End-to-End Encryption

- **End-to-End Encryption Overview**: 
  - End-to-End Encryption (E2EE) is a method of securing digital communication, ensuring that only the communicating users can read the messages, meaning that data between two peers is encrypted.

### 5. Secure Deletion and Full Disk Encryption

- **Secure Deletion**:
  - **Why Simple "Deletion" Isn't Secure**: Traditional deletion methods from file managers may not securely erase data. When a file is deleted, computer just "forgets" about its existence, but in reality the file's binary code is still in the storage, making recovery possible. Secure deletion involves overwriting the file(it's binary code in the storage) with random patterns multiple times, rendering the original data practically irretrievable.

- **Data at Rest**: Data at rest refers to information that is stored on a device or storage system but is not actively in use. This includes files on hard drives, databases, or any data stored on non-volatile media.
  
- **Full Disk Encryption (FDE)**:
  - FDE is a method of encrypting an entire storage device to protect data at rest.
  - It ensures that if the device is lost or stolen, the data remains inaccessible without the encryption key.
  - **Downside of FDE: Ransomware Implications**:
    - While FDE provides strong protection against unauthorized access, it does not prevent the modification or deletion of files by an authorized user or malware. Ransomware, a type of malicious software, can still encrypt files on a fully encrypted disk, making them inaccessible until a ransom is paid or the files are restored from backup.
  - Commonly used encryption tools for FDE include BitLocker, FileVault, and dm-crypt.

  - **Advantages of Full Disk Encryption**:
    - **Data Confidentiality**: FDE protects all data on the disk, including the operating system and system files.
    - **Compliance**: FDE helps organizations comply with data protection regulations by ensuring sensitive data is encrypted.

### 6. Quantum Computing and Brute-Force Attacks

- **Quantum Computing Overview**:
  - Quantum computing is an emerging field that leverages the principles of quantum mechanics to perform complex computations at speeds unimaginable by classical computers.
  - Unlike classical bits, which can exist in a state of 0 or 1, quantum bits or qubits can exist in multiple states simultaneously, enabling parallel processing and significantly speeding up certain calculations.

- **Quantum Computing and Brute-Force Attacks**:
  - Quantum computers have the potential to impact cybersecurity, particularly in the realm of brute-force attacks.
  - Due to their parallel processing capabilities, quantum computers could exponentially speed up the process of attempting multiple password combinations in parallel, posing a threat to traditional encryption methods.
  - Common encryption algorithms that rely on the difficulty of factoring large numbers, such as RSA, may become vulnerable to quantum attacks.

  - **Mitigation Strategies**:
    - The field of post-quantum cryptography is actively exploring encryption methods that would remain secure even in the face of quantum computing advancements.
