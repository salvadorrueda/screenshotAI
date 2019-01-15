# capture_every_second.sh
#
# Realiza una captura de pantalla cada segundo

#ffmpeg -i youtube.avi -vf fps=1 out%d.png
#ffmpeg -f x11grab -y -r 10 -s 1920x1080 -i :0.0 -vcodec huffyuv out.avi

# Output .png cada 1s 
#ffmpeg -f x11grab -y -r 10 -s 1920x1080 -i :0.0 -vf fps=1 out%d.png

#ffmpeg -i input.jpg -vf scale=w=320:h=240:force_original_aspect_ratio=decrease output_320.png

#ffmpeg -f x11grab -y -r 1 -s 1920x1080 -i :0.0 -vf scale=w=320:h=240:force_original_aspect_ratio=decrease out%d.png 
ffmpeg -f x11grab -y -r 1 -s 1920x1080 -i :0.0 -vf scale=w=320:h=240:force_original_aspect_ratio=decrease out_`date +"%Y-%m-%d_%H:%M"`_%d.png 

