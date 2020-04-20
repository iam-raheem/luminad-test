heads = [
    { id: 1, title: "heading1", heading_level: 0 },
    { id: 2, title: "heading2", heading_level: 2 },
    { id: 3, title: "heading3", heading_level: 1 },
    { id: 4, title: "heading4", heading_level: 1 }
]

heads.each_with_index do |h, i|
    pnt = heads[0..i].select {|h| h[:heading_level] == 1 }.count
    level = h[:heading_level]+1
    arr = []
    n = level
    while n > 0
        arr << 1
        if pnt > 0
            arr << pnt+1 
            break
        end
        n = n-1
    end

    ar_str = arr.join(".")
    puts " "*level+"#{ar_str}.#{h[:title]}"
end
