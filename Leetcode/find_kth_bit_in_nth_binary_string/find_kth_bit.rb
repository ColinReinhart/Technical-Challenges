# @param {Integer} n
# @param {Integer} k
# @return {Character}
def find_kth_bit(n, k)
    sn = "0"

    if n > 1 
        (n - 1).times do
            temp = ""
            temp << sn
            temp << "1"
            
            wip = ""
            sn.split('').reverse_each do |bit|
                if bit == "0"
                    wip << "1"
                else
                    wip << "0"
                end
            end
            temp << wip
            sn = temp
        end
    end
    
    sn[k - 1]
end

p find_kth_bit( 3, 1) #"0"
p find_kth_bit( 4, 11) #"1"