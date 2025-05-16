<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="data.Film" %>
<%@ page import="java.util.*, java.text.SimpleDateFormat" %>

<%
    // Validasi parameter
    String nama = request.getParameter("nama");
    String jumlahParam = request.getParameter("jumlah");
    String indexParam = request.getParameter("index");
    String jamTayang = request.getParameter("jam");

    if (nama == null || jumlahParam == null || indexParam == null || jamTayang == null) {
        response.sendRedirect("index.jsp");
        return;
    }

    int jumlahTiket = 1;
    int filmIndex = 0;

    try {
        jumlahTiket = Integer.parseInt(jumlahParam);
        filmIndex = Integer.parseInt(indexParam);
    } catch (Exception e) {
        response.sendRedirect("index.jsp");
        return;
    }

    // Ambil daftar film dari session
    List<Film> daftarFilm = (List<Film>) session.getAttribute("daftarFilm");
    if (daftarFilm == null || filmIndex < 0 || filmIndex >= daftarFilm.size()) {
        response.sendRedirect("index.jsp");
        return;
    }

    Film filmDipilih = daftarFilm.get(filmIndex);
    int totalHarga = filmDipilih.getHarga() * jumlahTiket;
    Date tanggal = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("dd MMM yyyy HH:mm");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Struk Tiket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .ticket-card {
            max-width: 700px;
            margin: auto;
            border: 2px dashed #0d6efd;
            padding: 30px;
            border-radius: 20px;
            background-color: #f8f9fa;
        }
        .ticket-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .ticket-header h2 {
            color: #0d6efd;
        }
        .poster-img {
            max-width: 150px;
            border-radius: 10px;
        }
        .ticket-footer {
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>
<body class="bg-light py-5">
    <div class="ticket-card shadow">
        <div class="ticket-header">
            <h2>STRUK PEMESANAN TIKET</h2>
            <p><strong>Waktu Pemesanan:</strong> <%= sdf.format(tanggal) %></p>
        </div>
        <div class="row">
            <div class="col-md-4 text-center">
                <img src="<%= filmDipilih.getPoster() %>" alt="Poster" class="poster-img img-fluid">
            </div>
            <div class="col-md-8">
                <table class="table table-borderless">
                    <tr><th>Nama Pemesan</th><td>: <%= nama %></td></tr>
                    <tr><th>Judul Film</th><td>: <%= filmDipilih.getJudul() %></td></tr>
                    <tr><th>Genre</th><td>: <%= filmDipilih.getGenre() %></td></tr>
                    <tr><th>Durasi</th><td>: <%= filmDipilih.getDurasi() %> menit</td></tr>
                    <tr><th>Jam Tayang</th><td>: <%= jamTayang %></td></tr>
                    <tr><th>Jumlah Tiket</th><td>: <%= jumlahTiket %></td></tr>
                    <tr><th>Harga per Tiket</th><td>: Rp <%= filmDipilih.getHarga() %></td></tr>
                    <tr><th>Total Bayar</th><td><strong>: Rp <%= totalHarga %></strong></td></tr>
                </table>
            </div>
        </div>
        <div class="ticket-footer">
            <p>Terima kasih telah memesan tiket di <strong>Bioskop Korea Online</strong></p>
            <a href="index.jsp" class="btn btn-outline-primary mt-3">Kembali ke Daftar Film</a>
        </div>
    </div>
</body>
</html>
