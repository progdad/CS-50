# Import the qrcode library
import qrcode

url = "https://www.github.com/progdad"


# Create a QR code with these settings:
# - Version 5 (larger for more data)
# - Medium error correction (can recover from approximately 15% errors)
# - 10-pixel module size (each grid square within the QR code)
# - 4-module border for a quiet zone (blank space around the QR code)
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)

# Add data (in this case, a URL) to the QR code
qr.add_data(url)
qr.make(fit=True)

# Create an image of the QR code
img = qr.make_image(fill_color="black", back_color="white")

# Save the QR code image to a file
# Note that the image will be saved in the directory you execute this file from!
img.save("./myGitHubQRCode.png")
