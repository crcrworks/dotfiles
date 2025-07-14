function convert-gif
  ffmpeg -i $argv[1] -filter_complex "[0:v] fps=10,scale=640:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" $argv[2]
end
