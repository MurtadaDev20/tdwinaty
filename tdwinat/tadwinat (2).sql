-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 12:30 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tadwinat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'murtadait20@gmail.com', '1212');

-- --------------------------------------------------------

--
-- Table structure for table `catigories`
--

CREATE TABLE `catigories` (
  `id` int(11) NOT NULL,
  `catigoryName` varchar(100) NOT NULL,
  `catigoryDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catigories`
--

INSERT INTO `catigories` (`id`, `catigoryName`, `catigoryDate`) VALUES
(13, 'css', '2022-05-10 14:11:46'),
(15, 'ويب', '2022-05-20 20:47:13'),
(16, 'php', '2022-05-20 22:24:49'),
(21, 'HTML', '2022-05-20 23:08:30'),
(28, 'javascript', '2022-05-21 14:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `postTitle` varchar(200) NOT NULL,
  `postCat` varchar(200) NOT NULL,
  `postImage` varchar(200) NOT NULL,
  `postContent` varchar(10000) NOT NULL,
  `postDate` datetime NOT NULL DEFAULT current_timestamp(),
  `postAuthor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `postTitle`, `postCat`, `postImage`, `postContent`, `postDate`, `postAuthor`) VALUES
(7, 'المقال الاول الذي يتكلم عن لغات البرمجة', 'HTML', '182_photo_2022-04-28_01-32-10.jpg', 'البرمجة هي عملية كتابة تعليمات وتوجيه أوامر لجهاز الحاسوب أو أي جهاز آخر مثل قارئات أقراص الدي في دي أو أجهزة استقبال الصوت والصورة في نظم الاتصالات الحديثة، لتوجيه هذا الجهاز وإعلامه بكيفية التعامل مع البيانات أو كيفية تنفيذ سلسلة من الأعمال المطلوبة تسمى خوارزمية.\r\n\r\nوتتبع عملية البرمجة قواعد خاصة باللغة التي اختارها المبرمج. وكل لغة برمجة لها خصائصها التي تميزها عن الأخرى وتجعلها مناسبة بدرجات متفاوتة لكل نوع من أنواع البرامج وحسب المهمة المطلوبة من هذا البرنامج. كما أن اللغات البرمجية  أيضا لها خصائص مشتركة وحدود مشتركة بحكم أن كل هذه اللغات صممت للتعامل مع الحاسوب. وتتطور لغات البرمجة (السوفتوير Software) بتطور عتاد الحاسوب المرئي (الهاردوير Hardware). فعندما ابتكر الحاسوب في الأربعينيات والخمسينيات من القرن الماضي (بعد أجهزة الحساب الكهربائية في العشرينات) - وكان الكمبيوتر يعمل بأعداد كبيرة من الصمامات الإلكترونية - كانت لغة البرمجة معقدة هي الأخرى، حتى أنها كانت عبارة عن سلسلة من الأعداد لا يدخلها إلا الصفر (0) والواحد (1) وذلك لأن الحاسب يفهم حالتين فقط وجود التيار (1) أو عدم وجوده (0)، وكان ذلك صعبا على المبرمجين. ولكن بابتكار الترانزيستور صغر حجم الحاسوب كثيرا وزادت إمكانياته، واستطاع المختصون في نفس الوقت أن يبتكروا لغات أسهل للاستخدام، وأصبحت لغات البرمج', '2022-05-20 23:41:12', 'مرتضى لقمان'),
(8, 'ماهي جافاسكريبت ؟ وما فائدتها ؟ وكيف يمكنني تعلمها ؟', 'javascript', '42_what-is-javascript.jpg', 'تعتبر لغة جافاسكريبت من اللغات الهامة جدا لتعلمها في الفترة الأخيرة , سارعت لغة جافاسكريبت بالتطور بشكل مخيف , وقدمت خدمات قوية لا جدال فيها في مختلف المجالات وسرعة هائلة في تنفيذ الأوامر مما جعلها في قائمة أهم 5 لغات برمجية لعام 2017 , نقدم لك نظرة عن قرب عن هذه اللغة في السطور القادمة .\r\n\r\nاذاً , ما هي جافا سكريبت بالضبط ؟\r\nجافا سكريبت (بالإنجليزية: JavaScript) هي لغة برمجة عالية المستوى تستخدم أساسا في متصفحات الويب لإنشاء صفحات أكثر تفاعلية يتم تطويرها حاليا من طرف شركة نتسكيب وشركة موزيلا.\r\n\r\n__ ويكيبيديا\r\n\r\nوكما تعرفها ويكيبيديا , فهي لغة برمجية عالية المستوى تستخدم أساساً في متصفحات الويب ولها استخدامات واسعة أخرى في المجالات الأخرى , تضيف اساساً تفاعلية عالية الى صفحة الويب الخاصة بك , ظهرت أساساً لغة جافاسكريبت للمبرمجين الهواة ! وتم ملاحظتها من عموم المبرمجين المحترفين وتطويرها واصدار نسخ أعلى قوة منها لاحقاً لتصبح اللغة الأكثر اثارة للاهتمام من عام 2015 وحتى الآن. \r\n\r\nيتم انشاء ملفات جافاسكريبت بطريقة طبيعية , وباضافة اللاحقة .js الى الملف لتعريفه على أنه ملف جافاسكريبت .', '2022-05-21 14:16:37', 'مرتضى لقمان'),
(12, 'Hypertext Markup Language Explanation', 'HTML', '645_html1.jpg', 'يرمز المختصر HTML إلى لغة ترميز النص التشعبي. إنها لغة الترميز الأساسية المستخدمة في كتابة المحتوى على الويب. تحتوي كل صفحة ويب على الإنترنت على بعض علامات HTML المضمنة في شفرة المصدر الخاصة بها ، وتتألف معظم مواقع الويب من العديد من المواقع. HTML أو .HTM الملفات.\r\n\r\nسواء كنت تنوي بناء موقع على شبكة الإنترنت لا يهم. إن معرفة ما هي HTML ، وكيفية ظهورها ، وأساسيات كيفية إنشاء لغة الترميز ، تُظهِر بالفعل التنوع المذهل لهذه البنية الأساسية للموقع وكيف أنها لا تزال جزءًا رئيسيًا من كيفية عرضنا للويب.\r\n', '2022-05-30 14:46:11', 'مرتضى لقمان'),
(13, 'من الذي اخترع HTML؟', 'HTML', '254_HTML 1.jpg', 'تم إنشاء لغة HTML في عام 1991 بواسطة Tim Berners-Lee ، وهو منشئ المحتوى الرسمي ومؤسس ما نعرفه الآن باسم شبكة الويب العالمية.\r\n\r\nلقد توصل إلى فكرة مشاركة المعلومات بغض النظر عن مكان وجود الكمبيوتر ، من خلال استخدام الارتباطات التشعبية (الروابط المشفرة بتنسيق HTML التي توصل موردًا إلى آخر) ، HTTP (بروتوكول اتصالات لخوادم الويب ومستخدمي الويب) وعنوان URL (نظام عنوان انسيابي لكل صفحة ويب على الإنترنت).\r\n\r\nتم إصدار HTML v2.0 في شهر نوفمبر من عام 1995 ، وبعد ذلك سبعة آخرين لتشكيل HTML 5.1 في نوفمبر من عام 2016. تم نشره كتوصية W3C.\r\n\r\nكيف تبدو HTML؟\r\nتستخدم لغة HTML ما تسمى بالعلامات ، وهي كلمات أو اختصارات تحيط بها الأقواس. تشبه علامة HTML النموذجية ما تشاهده في الصورة أعلاه.', '2022-05-30 14:48:08', 'مرتضى لقمان');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catigories`
--
ALTER TABLE `catigories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catigories`
--
ALTER TABLE `catigories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
