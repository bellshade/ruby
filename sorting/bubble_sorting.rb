# membuat fungsi bubble sort, parameter berupa array
def bubble_sort(array)
  # menyimpan panjang array ke dalam variabel n
  n = array.length

  # mulai looping yang akan terus berjalan hingga tidak ada element
  # yang ditukar
  loop do
    # inisialisasi variabel `swap` untuk melacak apakah ada swap
    swapped = false
    # iterasi melalui array dari indeks 0 hingga indeks kedua terakhir
    (n - 1).times do |i|
      # membandingkan elemen saat ini dengan elemen berikutnya
      if array[i] > array[i + 1]
        # tukar elemen jika elemen saat ini lebih besar dari elemen
        # berikutnya
        array[i], array[i + 1] = array[i + 1], array[i]
        # tandai bahwa ada pertukaran elemen
        swapped = true
      end
    end

    # keluar dari looping jika tidak elemen yang ditukar
    break unless swapped
  end
  # return array
  array
end

# minta input dari user berupa list angka
puts 'Masukkan list angka yang dipisahkan dengan spasi'
list = gets
# panggil fungsi bubble sort
sorted_list = bubble_sort(list.split.map(&:to_i))
print sorted_list
