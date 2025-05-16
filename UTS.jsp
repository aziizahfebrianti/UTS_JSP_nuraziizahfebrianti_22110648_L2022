<%@ page import="java.util.*, java.text.*" %>
<%
    class Film {
        String judul, genre;
        int durasi, harga;
        String[] jamTayang;

        Film(String judul, String genre, int durasi, int harga, String[] jamTayang) {
            this.judul = judul;
            this.genre = genre;
            this.durasi = durasi;
            this.harga = harga;
            this.jamTayang = jamTayang;
        }
    }

    ArrayList<Film> daftarFilm = new ArrayList<>();
    daftarFilm.add(new Film("Avengers", "Action", 150, 50000, new String[]{"12:00", "15:00", "18:00"}));
    daftarFilm.add(new Film("Frozen", "Animation", 100, 40000, new String[]{"10:00", "13:00", "16:00"}));
    daftarFilm.add(new Film("Conjuring", "Horror", 120, 45000, new String[]{"17:00", "20:00", "22:00"}));

    session.setAttribute("daftarFilm", daftarFilm);
%>

<h2>Daftar Film</h2>
<table border="1" cellpadding="5">
    <tr>
        <th>Judul</th><th>Genre</th><th>Durasi</th><th>Harga Tiket</th><th>Jam Tayang</th>
    </tr>
    <%
        for (Film film : daftarFilm) {
    %>
    <tr>
        <td><%= film.judul %></td>
        <td><%= film.genre %></td>
        <td><%= film.durasi %> menit</td>
        <td>Rp <%= film.harga %></td>
        <td>
            <%
                for (String jam : film.jamTayang) {
                    out.print(jam + " ");
                }
            %>
        </td>
    </tr>
    <% } %>
</table>

<a href="formPesan.jsp">Pesan Tiket</a>