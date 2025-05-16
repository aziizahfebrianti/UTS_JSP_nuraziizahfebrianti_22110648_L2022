<%@ page import="data.Film" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Ambil daftarFilm dari session dengan pengecekan null dan tipe
    Object objDaftarFilm = session.getAttribute("daftarFilm");
    List<Film> daftarFilm = null;
    if (objDaftarFilm instanceof List<?>) {
        try {
            daftarFilm = (List<Film>) objDaftarFilm;
        } catch (ClassCastException e) {
            daftarFilm = null;
        }
    }
    if (daftarFilm == null || daftarFilm.isEmpty()) {
        response.sendRedirect("index.jsp");
        return;
    }

    // Ambil parameter index dengan pengecekan null dan parsing aman
    String idxParam = request.getParameter("index");
    int index = -1;
    if (idxParam != null && !idxParam.isEmpty()) {
        try {
            index = Integer.parseInt(idxParam);
        } catch (NumberFormatException e) {
            response.sendRedirect("index.jsp");
            return;
        }
    } else {
        response.sendRedirect("index.jsp");
        return;
    }

    if (index < 0 || index >= daftarFilm.size()) {
        response.sendRedirect("index.jsp");
        return;
    }

    Film film = daftarFilm.get(index);
%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8" />
    <title>Form Pemesanan Tiket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="container mt-5">
    <h2>Form Pemesanan Tiket Film "<%= film.getJudul() %>"</h2>
    <form action="struk.jsp" method="post">
        <input type="hidden" name="index" value="<%= index %>" />
        <div class="mb-3">
            <label for="nama" class="form-label">Nama Pemesan</label>
            <input type="text" class="form-control" id="nama" name="nama" required />
        </div>
        <div class="mb-3">
            <label for="jumlah" class="form-label">Jumlah Tiket</label>
            <input type="number" class="form-control" id="jumlah" name="jumlah" min="1" required />
        </div>
        <div class="mb-3">
            <label for="jam" class="form-label">Pilih Jam Tayang</label>
            <select class="form-select" id="jam" name="jam" required>
                <% for (String jam : film.getJamTayang()) { %>
                    <option value="<%= jam %>"><%= jam %></option>
                <% } %>
            </select>
        </div>
        <button type="submit" class="btn btn-success">Pesan</button>
        <a href="index.jsp" class="btn btn-secondary">Batal</a>
    </form>
</body>
</html>
