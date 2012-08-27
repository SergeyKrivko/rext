module Rext
  module Array
    # возвращает каждый n элемент

    def every(n)
      if n != 0 && n != 1
        indexes = []
        (n - 1).step(self.size - 1, n) { |i| indexes << i }
        return self.values_at(*indexes)
      elsif n == 0
        return []
      else
        return self
      end
    end

    # возвращает массив элементов с парными индексом

    def even
      indexes = []
      0.step(self.size - 1, 2) { |i| indexes << i }
      self.values_at(*indexes)
    end

    # возвращает массив элементов с непарными индексом

    def odd
      indexes = []
      1.step(self.size - 1, 2) { |i| indexes << i }
      self.values_at(*indexes)
    end

  end
end