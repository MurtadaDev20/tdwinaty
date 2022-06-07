<?php
session_start();
include 'include/connection.php';
include('include/header.php');


if (isset($_POST['category'])) {
    $cName = $_POST['category'];
}
if (isset($_POST['add'])) {
    $cAdd = $_POST['add'];
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
}

if (!isset($_SESSION['id'])) {
    echo "<div class =' alert alert-success'>" . "غير مسموح لك بفتح هذه الصفحة" . "</div>";
    header('REFRESH:2;URL=login.php');
} else {



?>

    <!-- Start Content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2" id="side-area">
                    <h4>لوحة التحكم</h4>
                    <ul class="">
                        <li>
                            <a href="">
                                <span><i class="fas fa-tags"></i></span>
                                <span>التصنيفات</span>
                            </a>
                        </li>

                        <!-- Articls -->
                        <li data-bs-toggle="collapse" data-bs-target="#menu">
                            <a href="#">
                                <span><i class="fas fa-newspaper"></i></span>
                                <span>المقالات</span>
                            </a>
                        </li>
                        <ul class="collapse" id="menu">
                            <li>
                                <a href="new-post.php">
                                    <span><i class="far fa-edit"></i></span>
                                    <span>مقال جديد</span>
                                </a>
                            </li>
                            <li>
                                <a href="posts.php">
                                    <span><i class="far fa-edit"></i></span>
                                    <span>كل المقالات</span>
                                </a>
                            </li>

                        </ul>


                        <li>
                            <a href="index.php" target="_blank">
                                <span><i class="fas fa-window-restore"></i></span>
                                <span>عرض الموقع</span>
                            </a>
                        </li>
                        <li>
                            <a href="logout.php">
                                <span><i class="fas fa-sign-out-alt"></i></span>
                                <span>تسجيل الخروج</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-10" id="main-area">
                    <div class="add-category">
                        <?php

                        if (isset($cAdd)) {
                            if (empty($cName)) {
                                echo "<div class='alert alert-danger'>" . "الرجاء ملء الحقل" . "</div>";
                            } elseif (strlen($cName) > 100) {
                                echo "<div class='alert alert-danger'>" . "أسم التصنيف كبير جدا" . "</div>";
                            } else {
                                $query = "INSERT INTO catigories(catigoryName) VALUES('$cName')";
                                mysqli_query($conn, $query);
                                echo "<div class='alert alert-success'>" . "تمت إضافة التصنيف" . "</div>";
                            }
                        }
                        ?>
                        <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST">
                            <div class="form-group">
                                <label for="category" class="mb-3">تصنيف جديد</label>
                                <input type="text" name="category" class="form-control mb-3">
                            </div>
                            <button class="btn-custom " name="add">اضافة</button>
                        </form>
                    </div>

                    <!-- display categories -->
                    <div class="display-cat mt-5">
                        <?php

                        if (isset($id)) {
                            $query = "DELETE FROM catigories WHERE id = '$id' ";
                            $delete = mysqli_query($conn, $query);


                            if (isset($delete)) {
                                echo "<div class='alert alert-success'>" . " تم حذف التصنيف بنجاح" . "</div>";
                            } else {
                                echo "<div class='alert alert-danger'>" . " عفوا حدث خطا ما" . "</div>";
                            }
                        }

                        ?>
                        <table class="table  table-hover">
                            <tr>
                                <th>رقم الفئة</th>
                                <th>اسم الفئة</th>
                                <th>تاريخ الاضافة</th>
                                <th>حذف التصنيف</th>
                            </tr>
                            <?php
                            $query = "SELECT * FROM catigories ORDER BY id DESC";
                            $res = mysqli_query($conn, $query);
                            $no = 0;
                            while ($row = mysqli_fetch_assoc($res)) {
                                $no++;
                            ?>

                                <tr>
                                    <td><?php echo $no ?></td>
                                    <td><?php echo $row['catigoryName'] ?></td>
                                    <td><?php echo $row['catigoryDate'] ?></td>
                                    <td><a href="catefories.php?id=<?php echo $row['id']; ?>"><button class="btn-custom ">حذف التصنيف</button></a></td>
                                </tr>

                            <?php
                            }
                            ?>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Content -->

<?php
}
?>
<?php
include('include/footer.php');
?>