package data;

/**
 * Model class untuk data Film
 * @author Noer
 */
public class Film {
    private String judul;
    private String genre;
    private int durasi;
    private int harga;
    private String[] jamTayang;
    private String poster;

    public Film(String judul, String genre, int durasi, int harga, String[] jamTayang, String poster) {
        this.judul = judul;
        this.genre = genre;
        this.durasi = durasi;
        this.harga = harga;
        this.jamTayang = jamTayang;
        this.poster = poster;
    }

    // Getter
    public String getJudul() {
        return judul;
    }

    public String getGenre() {
        return genre;
    }

    public int getDurasi() {
        return durasi;
    }

    public int getHarga() {
        return harga;
    }

    public String[] getJamTayang() {
        return jamTayang;
    }

    public String getPoster() {
        return poster;
    }

    // (Opsional) Untuk debugging
    @Override
    public String toString() {
        return "Film{" +
                "judul='" + judul + '\'' +
                ", genre='" + genre + '\'' +
                ", durasi=" + durasi +
                ", harga=" + harga +
                '}';
    }
}
