class Question202104_01
  attr_accessor :ar

  def initialize(ar)
    @ar = ar
  end

  def exec
    # ここに実装を書いていく
    max = 0
    distance_array = []
    ar.each_with_index do |current, i|
      if i == 0
        next
      end
      before = ar[i-1]
      if current == '山'
        if before == '山'
          # 山 → 山 への移動パターン
          distance_array << 0
        else
          # 野 → 山 への移動パターン
          distance_array << 100
          # 配列の中身が2以上の場合(山→野、野→山)、山から山までの移動ができているので距離としてカウント
          if distance_array.length >= 2 
            distance = distance_array.sum
            # 現在の最長距離と比較して大きかったらmaxを上書き
            if distance > max
              max = distance
            end
          end
          # 野→山の動きは一律配列を空にして再度計算できるようにする
          distance_array = []
        end
      else
        if before == '山'
          # 山 → 野 への移動パターン
          distance_array << 100
        else
          # 野 → 野 への移動パターン
          # 配列が空の場合、まだ一つの山にもたどり着いていないので、カウントしない
          if distance_array.size != 0
            distance_array << 50
          end
        end
      end
    end
    max
  end
end
