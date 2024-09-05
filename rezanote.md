Buka folder project
1. Buka 3 Terminal di vscode
    a. untuk menjalankan query postgresql
    b. untuk menjalankan project dengan perintah 'npm run dev'
    c. untuk mengeksekusi script dari project bukan dari sql atau untuk menjalankan git

2. saat update project dari git, jangan lupa menjalankan perintah
    a. npm install
    b. buat file .env.local dan isinya copy dari .env.example

3. cheat untuk postgresql
    \c lemi_app (untuk pilih database yang akan digunakan)
    \dt untuk cek relasi
    \i sql/1u.sql (untuk menjalankan script sql di folder sql)
    \q untuk kembali ke terminal bash
    \x untuk bentuk tampilan yang lebih baik
    \d follows untuk melihat struktur table follows

    psql -U postgres -p 5432 -d lemi_app -f sql/1d.sql (untuk menjalankan script sql tanpa harus masuk ke terminal psql)

4. cheat untuk ke GIT
    
    sebelum upload ke git, mesti konek dengan githubnya:
        1. ssh -T git@github.com
        2. git init
    ### upload to git hub ###
        1. git add .
        2. git commit -m "komentar"
        3. git status
        4. git push

