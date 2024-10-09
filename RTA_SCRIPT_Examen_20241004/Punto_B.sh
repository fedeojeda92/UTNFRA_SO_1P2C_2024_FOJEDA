sudo parted /dev/sdc mklabel gpt
for i in {1..10}; do
  sudo parted -a optimal /dev/sdc mkpart primary ext4 $(( (i-1) * 1024 ))MiB $(( i * 1024 ))MiB
done

for i in {1..10}; do
  sudo mkfs.ext4 /dev/sdc$i
done


sudo mount /dev/sdc1 /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdc2 /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdc3 /Examenes-UTN/alumno_1/parcial_3
sudo mount /dev/sdc4 /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdc5 /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdc6 /Examenes-UTN/alumno_2/parcial_3
sudo mount /dev/sdc7 /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdc8 /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdc9 /Examenes-UTN/alumno_3/parcial_3
sudo mount /dev/sdc10 /Examenes-UTN/profesores


echo "/dev/sdc1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc2 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc3 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc4 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc5 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc6 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc7 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc8 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc9 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc10 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee
