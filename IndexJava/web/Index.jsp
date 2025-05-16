<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="data.Film" %>
<%@ page import="java.util.*" %>
<%
    // Inisialisasi daftar film hanya jika belum ada di session
    List<Film> daftarFilm = (List<Film>) session.getAttribute("daftarFilm");
    if (daftarFilm == null) {
        daftarFilm = new ArrayList<>();
        daftarFilm.add(new Film("Parasite", "Drama/Thriller", 132, 60000,
            new String[]{"10:00", "13:00", "16:00"},
            "https://upload.wikimedia.org/wikipedia/en/5/53/Parasite_%282019_film%29.png"));

        daftarFilm.add(new Film("Train to Busan", "Action/Horror", 118, 55000,
            new String[]{"11:00", "14:00", "17:00"},
            "https://upload.wikimedia.org/wikipedia/en/9/95/Train_to_Busan.jpg"));

        daftarFilm.add(new Film("The Silent Sea", "Sci-Fi/Thriller", 50, 45000,
            new String[]{"14:00", "17:00", "20:00"},
            "https://upload.wikimedia.org/wikipedia/en/3/3e/The_Silent_Sea.jpg"));

        session.setAttribute("daftarFilm", daftarFilm);
    }
%>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Film Korea</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container py-5">
        <h2 class="text-center mb-4">Daftar Film Korea</h2>
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
            <% for (int i = 0; i < daftarFilm.size(); i++) {
                Film film = daftarFilm.get(i); %>
                <div class="col">
                    <div class="card h-100 shadow-sm">
                        <img src="<%= film.getPoster() %>" class="card-img-top" alt="Poster <%= film.getJudul() %>">
                        <div class="card-body">
                            <h5 class="card-title text-primary"><%= film.getJudul() %></h5>
                        <p class="card-text mb-1"><strong>Genre:</strong> <%= film.getGenre() %></p>
                        <p class="card-text mb-1"><strong>Durasi:</strong> <%= film.getDurasi() %> menit</p>
                        <p class="card-text mb-1"><strong>Harga:</strong> Rp <%= film.getHarga() %></p>
                        <p class="card-text"><strong>Jam Tayang:</strong> <%= String.join(", ", film.getJamTayang()) %></p>
                            <a href="formpesan.jsp?index=<%= i %>" class="btn btn-primary mt-2">Pesan Tiket</a>
                        </div>
                    </div>
                </div>
            <% } %>
        </div>
    </div>
</body>
</html>
