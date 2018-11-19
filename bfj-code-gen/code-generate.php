<?php

include('connection.php');

$dusParam=$_GET['dusParam'];

$sql = "SELECT * FROM buku WHERE nama_dus = '$dusParam' ORDER BY judul_buku ASC";
$result = $conn->query($sql);

$count=0;
$arr=[];
$i =0;
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $countStok = 0;
        $row["kategori"] = strtolower($row["kategori"]);
        $row["kategori"] = str_replace(' ', '', $row["kategori"]);
        while ($countStok < $row["jumlah"]){
            
            if ($row["kategori"] == "dongenganak"){
                $arr[$i]['kategori'] = "DA";
                $arr[$i]['kode'] =  "010";
            }
            else if ($row["kategori"] == "pengetahuanumum"){
                $arr[$i]['kategori'] = "PU";
                $arr[$i]['kode'] =  "050";
            }
            else if ($row["kategori"] == "ceritaanak"){
                $arr[$i]['kategori'] = "CA";
                $arr[$i]['kode'] =  "020";
            }
            else if ($row["kategori"] == "novelanak"){
                $arr[$i]['kategori'] = "NA";
                $arr[$i]['kode'] =  "030";
            }
            else if ($row["kategori"] == "bukuislami"){
                $arr[$i]['kategori'] = "BI";
                $arr[$i]['kode'] =  "040";
            }
            else if ($row["kategori"] == "ensiklopedia"){
                $arr[$i]['kategori'] = "EN";
                $arr[$i]['kode'] =  "060";
            }
            else if ($row["kategori"] == "serialtokoh"){
                $arr[$i]['kategori'] = "ST";
                $arr[$i]['kode'] =  "070";
            }
            else if ($row["kategori"] == "atlas"){
                $arr[$i]['kategori'] = "AT";
                $arr[$i]['kode'] =  "080";
            }
            else if ($row["kategori"] == "komikanak"){
                $arr[$i]['kategori'] = "KA";
                $arr[$i]['kode'] =  "090";
            }
            else{
                echo "ada eror";
            }

            $arr[$i]['judul_buku'] = strtoupper(substr($row["judul_buku"],0,1));
            $arr[$i]['penulis'] = strtoupper(substr($row["penulis"],0,3));
    
            $i++;
            $countStok++;
        }
    }
} else {
    echo "0 results";
}
$conn->close();
?>


<style>
table, th, td {
    border: 1px solid black;
}
</style>

<?php
$row=0;
while ($count < sizeof($arr)){
    if($row%8== 0 && $row != 0) echo "<br><br><br><br><br><br><br>";
?>
    <table width="200" style="width:200mm;height:33mm; border-collapse: collapse;" >
    <tr>
        <?php 
            foreach ($arr as $k => $obj){
                if($k < $count) continue;
        ?>
        <td align="center">
            <?php
                echo "<b>TIM PKM<br>POLBAN</b>" . "<br>";
                echo $obj['kategori'] . "<br>";
                echo $obj['kode'] . "<br>";
                echo $obj['penulis'] . "<br>";
                echo $obj['judul_buku'] . "<br>";
                $count++;
            ?>
        </td>
        <?php 
                if($count%5 == 0) break;
            }
        ?>
    </tr>
    
    </table>

<?php 
$row++;
} ?>
