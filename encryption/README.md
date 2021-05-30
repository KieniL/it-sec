
# Encryption of a jpg with openssl on linux:

1. Download a jpg file and open it with gimp
2. Export the file as ppm with raw format
3. insert the header of the ppm in a file with: head -n 4 {ppm}.ppm > header.txt
4. insert the body content in a file with: tail -n +5 {ppm}.ppm > body.bin
5. encrypt the file with aes-256 with: openssl enc -aes-256-cbc -nosalt -pass pass:"PASSWORD" -in body.bin -out body.enc.bin (you can also use ecb but then the original image is a little bit shown --> openssl enc -aes-256-ecb -nosalt -pass pass:"PASSWORD" -in body.bin -out body.enc.bin)
6. concat the header with the encryption with: cat header.txt body.enc.bin > {ppm}.enc.ppm


