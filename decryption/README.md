
# Decryption of a jpg with openssl on linux:

1. Extract the header of the encrypted file with: head -n 4  {ppm>}.enc.ppm > header.ppm.txt
2. Extract the body of the encrypted file with: tail -n +5 {ppm}.enc.ppm > body.enc.bin
3. decrypt the binary if you know the password with: openssl enc -aes-256-cbc -d -nosalt -pass pass:"PASSWORD" -in body.enc.bin -out body.bin
4. concat header and binary with: cat header.ppm.txt body.bin > photo.ppm