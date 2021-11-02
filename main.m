fid = fopen('football_cif.yuv','r');           % Open the video file
stream = fread(fid,'*uchar');    % Read the video file
width=352;
height=288;
length = 1.5 * width * height;  % Length of a single frame   
frame = stream(1:150*length);

fid2=fopen('football_cif_150.yuv','w');
fwrite(fid2,frame,'*uchar');
fclose(fid2);

temp=yuvpsnrperframe('football_cif_150.yuv','b3800dec.yuv',352,288,'420','yuv');