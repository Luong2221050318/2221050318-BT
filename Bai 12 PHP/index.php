<?php
    // viết chú thích
    echo "Hello Big Family <br>" ;
    //Biến: $tên biến = giá trị;
    $hoTen = "Hà Chung Lương <br>";
    $tuoi = 22;
    echo $hoTen . " " . $tuoi . " Tuổi" . "<br>";

    //strlen() Độ dài chuỗi
    echo strlen($hoTen) . "<br>";

    //str_word_count() Đếm số từ trong chuỗi
    echo str_word_count($hoTen) . "<br>";

    //tìm kiếm kí tự trong chuỗi
    echo strpos($hoTen, "Hà") . "<br>";

    //str_replace() thay thế chuỗi
    echo str_replace("Hà", "Lương", $hoTen) . "<br>";  
    
    $soThuNhat = 15;
    $soThuHai = 10;
    echo $soThuNhat + $soThuHai . "<br>";

    // Toán tử gán
    #, +=, -=, *=, /=, %=, .=
    $soThuNhat += $soThuHai; // Tương đương với $soThuNhat = $soThuNhat + $soThuHai;
    echo $soThuNhat . "<br>";

    // Toán tử so sánh
    # ==, ===, !=, <>, !==, >, <, >=, <=
    echo ($soThuNhat == $soThuHai) ? "Bằng nhau" : "Khác nhau" . "<br>";
    echo $soThuNhat == $soThuHai . "<br>";

    // câu điều kiện if else
    if($soThuNhat > $soThuHai){
        echo "Số thứ nhất lớn hơn số thứ hai";
    } else if($soThuNhat < $soThuHai){
        echo "Số thứ nhất nhỏ hơn số thứ hai";
    } else {
        echo "Hai số bằng nhau";
    }

    // kiểm tra số thứ nhất và số thứ hai có phải là số chẵn hay không
    if($soThuNhat % 2 == 0 && $soThuHai % 2 == 0){
        echo "<br> Hai số đều là số chẵn";
    } else if($soThuNhat % 2 != 0 && $soThuHai % 2 != 0){
        echo "<br> Hai số đều là số lẻ";
    } else {
        echo "<br> Một số là số chẵn, một số là số lẻ";
    }

    // Câu điều kiện switch case
    $color = "red";
    switch($color){
        case "red":
            echo "<br> Màu đỏ";
            break;
        case "blue":
            echo "<br> Màu xanh dương";
            break;
        case "green":
            echo "<br> Màu xanh lá cây";
            break;
        default:
            echo "<br> Không có màu nào được chọn";
    }

    // Vòng lặp for
    for($i = 1; $i <= 10; $i++){
        echo "<br> Số thứ " . $i;
    }

    //mảng
    $mangSo = array(1, 2, 3, 4, 5);
    echo "<br> Số thứ 3 trong mảng là: " . $mangSo[2];
?>
