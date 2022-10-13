-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 08, 2022 at 06:15 AM
-- Server version: 10.5.13-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u628814859_quiz_fest`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `A` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `B` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `C` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `D` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_key` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`id`, `question_id`, `question`, `A`, `B`, `C`, `D`, `question_key`) VALUES
(343, 1, 'What will be the output ?\nclass Test {\n	protected int x, y;\n}\n\nclass Main {\n	public static void main(String args[]) {\n		Test t = new Test();\n		System.out.println(t.x + \" \" + t.y);\n	}\n}', '0 0', '98657 95467', '  1 1', 'none of the above ', '  A'),
(344, 2, 'public class Main\n{\n	public static void main(String[] args) {\n	 int a=0;\n	 int b=1;\n	 if(1)\n	   System.out.println(\"True\");\n	 else System.out.println(\"False\");\n	}\n} What will be the output ?', 'TRUE', 'FALSE', 'compile time error', 'run time error', 'C'),
(345, 3, 'public class Main\n{\n	public static void main(String[] args) {\n	 for(int i = 0; true; i++) {\n            System.out.println(\"Hello\");\n            break;\n        }\n	}\n} What will be the output ?', 'Compile time error', 'run time error', 'Hello', 'no output', 'C'),
(346, 4, 'class Main {\n    public static void main(String args[]) {  \n        System.out.println(fun());\n    }\n    int fun() {\n        return 20;\n    }\n}What will be the output ?', '20', ' compile time error', 'runtime error', '0', 'A'),
(347, 5, 'int main()\n{\n  int i = 1;\n  cout << ++i;\n  cout << i++;\n}What will be the output ?', '1 1', '2 2', '1 2', '2 1', 'B'),
(348, 6, 'Which of the following is the correct statement \nto print the value of i using a?\n#include<stdio.h>\nint main()\n{\n    int i=10;\n    int *a = &i;\n    //code\n}', 'printf(\"%d\",a);', 'printf(\"%d\",&a);', 'printf(\"%d\",*a);', 'printf(\"%d\",*(&a));', 'C'),
(349, 7, 'class Test {\n	int x = 10;\n	public static void main(String[] args)\n              {       Test t = new Test();\n                      System.out.println(t.x);\n	}\n}What will be the output ?', 'garbag? value', '10', '0', 'compile error', 'B'),
(350, 8, 'class Main{\n	int y = 2;\n	int x = y + 2;\n	public static void main(String[] args)\n	{\n		Main m = new Main();\n		System.out.println(\"x = \" + m.x + \", y = \" + m.y);\n	}\n}What will be the output ?', '4 2', '2 4', 'x=4 y=2', 'x=2 y=1', 'C'),
(351, 9, '\nIdentify the incorrect constructor type in c++.', 'Friend Constructor', 'Default Constructor', 'Parameterized constructor', 'copy Constructor', 'A'),
(352, 10, '\nWhich of the following data type is supported in C++ but not in C?', 'int', 'bool', 'float', 'double', 'B'),
(353, 11, '\nIdentify the correct syntax for declaring arrays in C++.', 'array arr[10]', 'array{10}', 'int arr[10]', 'arr[10]', 'C'),
(354, 12, 'main(){\n  int i = 0;\n  label:\n  cout << \"Hi\";\n  i++;\n  if(i < 3){\n    goto label;\n  }\n}\n\nWhat will be the output ?\n\n', '3', '2', '1', '0', 'A'),
(355, 13, 'int main(){\n int a = 10 / 0;\n} Predict the output', '0', 'compile time error', 'exception', 'None', 'C'),
(356, 14, '#include<iostream>\n#include<string.h>\nusing namespace std;\nint main(){\n  char ch[] = \"HELLO CODERS\"; \n int l = strlen(ch);\n cout << l << endl;\n  }What will be the output ?', '11', '12', '13', '9', 'B'),
(357, 15, '#include<iostream>\n#include<string.h>\nusing namespace std;\nint main(){\n    int i = (1, 2, 3);\n    cout << i << endl;\n  }What will be the output ?', 'compile time error', '1', '3', '0', 'C'),
(358, 16, 'Which of the following is the correct identifier in c++?', '2var_num', '2VAR_NUM', '$varnum', 'var_num123', 'D'),
(359, 17, '\nWhich of the following is not a type of inheritance?', 'Multilevel', 'Single', 'Distributed', 'Heirarchical', 'C'),
(360, 18, 'Which concept do we use for the implementation of late binding in c++?\n', ' Static Functions', ' Constant Functions', 'Operator Functions', ' Virtual Functions', 'D'),
(361, 19, '#include<iostream>\nusing namespace std;\n  int x = 10;\nvoid fun()\n{\n   int x = 2;\n    {\n        int x = 1;\n        cout << ::x << endl; \n    }\n}\nint main()\n{\n    fun();\n    return 0;\n}What will be the output ?', '10', '2', '1', '0', 'A'),
(362, 20, 'int sum (int B[], int n)\n{\n int s = 0, j;\n for (j = 0; j < n; j++)\n s = s + B[i];\nreturn s;\n\n}// sizeof(int) = 2 bytes     What will be the space required for this piece of code? ', '2n+8', '2n+4', '2n+2', '2n', 'A'),
(363, 21, 'What will be the output of the following pseudo code?\nInput p = 9, w = 6 ,\np = p + 1 ;\nw = w - 1 ;\np = p + w \nif (p > w)\n print p\nelse\n print w', '6', '5', '10', '15', 'D'),
(364, 22, 'What is the output?\nInput t = 6, h = 9 and set x = 0 \nInteger c \nif (h > t)\n    for (c = t; c < h; c = c + 1)\n       x = x + c \n    End for loop\n    print x\nelse\n    print error message print x   ', '21', '15', '9', '6', 'A'),
(365, 23, 'what is the output?\ninteger i\nset i=3\ndo\nprint i+3\ni=i-1\nwhile( i not equals 0)\nend while', '6 5 6', '6 4 4 ', '5 5 5', '6 5 4', 'D'),
(366, 24, 'Integer count\n	for (each count from 0 to 9)\n                              print \"#\" \n                             if (count > 6)	\n                                    CONTINUE \n                              print count \n\n	End for   // What is the output?', '#######', '#0#1#2#3#4#5#', '#0#1#2#3#4#5#6##', '########678', 'C'),
(367, 25, 'public void func (Tree root)\n{\nfunc (root.left ());\nfunc (root.right ());\nSystem.out.println (root.data ());\n}', 'Preorder Traversal', 'Inorder Traversal', 'Postorder Traversal', 'Level order Traversal', 'C'),
(368, 26, 'Read limit\nn1 = 0, n2= 1, n3=1, count = 1;\nwhile count <= limit\ncount=count+1\nprint n3\nn3 = n1 + n2\nn1 = n2\nn2 = n3\nEnd While // what is the output?', '112358', '12358', '123581321', '12358132', 'A'),
(369, 27, 'Read a,b\nFunction answer(a, b)\nt = 0\nwhile (b != 0):\n t = t + a\n b=b-1\nEnd While\nreturn t\nEnd Function// what is the output?', '6995', '7995', '8995', 'none', 'B'),
(370, 28, 'Integer funn(Integer a, Integer b)\n Integer c \nSet c = 2 \nb = b mod c \n a = a mod c\n return a + b \nEnd function funn()//what is the output?', '2', '15', '17', '-5', 'A'),
(371, 29, 'Integer a, b, c, sum \nRead a, b, c \nSet sum = a + b + c \nif ((sum EQUALS 180) and (a NOT EQUALS 0) and (b NOT EQUALS 0) and (c NOT EQUALS 0))\nPrint \" Success\" \nOtherwise \n Print \"Fail\" \nEnd if // What is the output?', 'compile error', 'fail', 'success', 'none', 'C'),
(372, 30, '#include <iostream> \nusing namespace std; \nint main() \n{ \n  int a = 32, *ptr = &a; \n   char ch = \'A\', &cho = ch; \n   cho += a; \n   *ptr += ch; \n     cout << a << \", \" << ch << endl; \n return 0; \n}// What is the output?', '129,a', '32,a', '32,A', '129,A', 'A'),
(373, 31, '#include<stdio.h>\nvoid main()\n{\nint a=(char)260;\nint b=(char)130;\nprintf(\"%d %d\",a,b);\n}// What is the output?', '260 130', '4 130', '4 -126', 'compilation error', 'C'),
(374, 32, 'What will be the output of the following pseudo code ?\n#include<stdio.h>\nvoid main()\n{\n	char x=(char)305;\n      switch(x)\n      {\n           default:printf(\"A\");\n           case 1:printf(\"B\");\n           case \'1\':printf(\"C\");\n           case 305:printf(\"D\");\n       }\n}', 'D', 'ABCD', 'CD', 'compilation error', 'C'),
(375, 33, 'What will be the output of the following pseudo code ?\n#include<stdio.h>\nvoid main()\n{\n    int x=10,y=20;\n    int * p=&x;\n    int ** pp=&p;\n    printf(\"%d %d %d %d \",x,y,*p, **pp);\n    *p=1;\n    **pp=2;\n    *pp=&y;\n    printf(\"%d %d %d %d \",x,y,*p,**pp);\n}', '10 20 10 10 2 20 20 20', '10 20 10 10 1 1 20 20', '10 20 10 20 1 20 20 20', '10 10 10 10 10 10 10 10', 'A'),
(376, 34, 'What will be the output of the following pseudo code ?\n#include <stdio.h>\nvoid main() \n{ \n   static int var = 5; \n   printf(\"%d \",var--); \n   if(var) \n   main(); \n\n }', 'Overflow', 'compile time error', '5 4 3 2 1', '1 2 3 4 5', 'C'),
(377, 35, 'What will be the output of the following pseudo-code?\nvoid main()\n{\n  char a[4]=\"ABC\";\n  char b[4]=\"PQRS\";\n   printf(b);\n   printf(\"%d %d %d\",10,20,30);\n   printf(\" %c %c \",\"ABCDE\"[3],3[\"PQRST\"]);\n   printf(5+\"ABCDE \"-3);\n}', 'PQRS10 20 30 D S CDE', 'PQRS 10 20 30 D S CDE', 'PQRSABC 10 20 30 D S C', 'PQRS 10 20 D S CDE', 'A'),
(378, 36, 'What will be the output of the following pseudo code ?\nmain() \n{ \n  int i=-1,j=-1,k=0,l=2,m; \n    m=i++&&j++&&k++||l++; \n   printf(\"%d %d %d %d %d\",i,j,k,l,m); \n\n}', '0 1 2 3 1', '0 0 3 1 1', '0 0 1 3 1', '0 1 0 2 1', 'C'),
(379, 37, 'What will be the output of the following pseudo code ?\n#include<stdio.h>\nvoid main(){\n    int a[]={5,10,15};\n    int i=0,num;\n    num=a[++i]+ ++i+(++i);\n    printf(\"%d\",num);\n  }', '6', '15', '10', '5', 'B'),
(380, 38, 'What will be the output of the following pseudo code ?\n#include<stdio.h>\nvoid main()\n{\n     extern int fun(float);\n     int a;\n     a=fun(3.14);\n     printf(\"%d\",a);\n}\nint fun(aa)\nfloat aa;\n{\n   return ((int)aa);\n}', '0', '3.14', '3', 'error', 'D'),
(381, 39, 'What will be the output of the following pseudo code ?\n#include<stdio.h>\nvoid main()\n{\n    int a[10]={1,2,3};\n    printf(\"%d %d %d\",a[3],a[4],a[5]);\n}', 'garbag? value', '2 3 3', '3 2 2', '0 0 0', 'D'),
(382, 40, 'What will be the output of the following pseudo-code?\n#include<stdio.h>\nvoid main()\n{\n    int i=1;\n    for(;;)\n    {\n        printf(\"%d \",i++);\n        if(i>10)\n         break;\n    }\n}', '1 2 3 4 5 6 7 8 9 10', '10 9 8 7 6 5 4 3 2 1', 'no output', 'error', 'A'),
(383, 41, '\"Predict the output for the input n=120\r\n#include<stdio.h>\r\nint main()\r\n{\r\n    int n,c=0;\r\nscanf(\"\"%d\"\",&n);\r\nwhile((n&1)==0)\r\n{\r\n    c++;\r\n    n>>=1;\r\n}\r\nif(c!=0)\r\n{\r\n    printf(\"\"%d trailing zeroes\"\",c);\r\n}\r\nelse\r\n{\r\n    printf(\"\"no trailing zeroes\"\");\r\n}\r\n}\"\r\n', '10', '3', '4', '2', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `rollnumber` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `rollnumber`, `name`, `email`, `phonenumber`, `datetime`) VALUES
(975, '19A81A05K5', 'Guttula  Navya Lakshmi', 'navyaguttula84@gmail.com', '9398576720', '2022-09-11 06:59:35'),
(976, '20A81A5082', 'G.DEVI', 'gudedevi22@gmail.com', '9848316842', '2022-09-11 06:59:56'),
(977, '20A81A05D8', 'D.NagaDurga', 'dondapatinagadurga2002@gmail.com', '7382528099', '2022-09-11 06:59:57'),
(978, '20A81A05A4', 'MUTTA KARTHIK PATTABHI RAMA RAO', 'karthikmutta26@gmail.com', '7981613722', '2022-09-11 07:00:02'),
(979, '19A81A05K8', 'Kankipati V.S.S.Baby Sujitha', 'sujithakankipati@gmail.com', '9908564662', '2022-09-11 07:00:02'),
(980, '20A81A0653', 'satya sai teja', '20A81A0653@sves.org.in', '7729084589', '2022-09-11 07:00:02'),
(981, '19A81A0554', 'Sri Vangipuram Mahati', '19A81A0554@sves.org.in', '9063359122', '2022-09-11 07:00:02'),
(982, '20A81A05G3', 'Meesala Rama Lakshmi Kala', '20A81A05G3@sves.org.in', '6302831369', '2022-09-11 07:00:02'),
(983, '20A81A05I6', 'Talari sindhuja', '20a81a05i6@sves.org.in', '9398830709', '2022-09-11 07:00:02'),
(985, '20A81A05P0', 'VEERLA SUPRIYA', '20A81A05P0@sves.org.in', '7995137019', '2022-09-11 07:00:03'),
(986, '20A81A0612', 'Damisetti.janvitha padma', '20A81A0612@sves.org.in', '6300739772', '2022-09-11 07:00:03'),
(987, '21A85A0515', 'MIRIYALA LOK DATT ANJESWARLU', '21A85A0515@sves.org.in', '9849767669', '2022-09-11 07:00:04'),
(988, '20A81A05K0', 'CH.JAYASRI NAGA VENKATA LOKESWARI', '20A81A05K0@sves.org.in', '8247734229', '2022-09-11 07:00:04'),
(989, '20A81A05F9', 'Kusumanchi A Vaishnavi Tripura', '20a81a05f9@sves.org.in', '07997940300', '2022-09-11 07:00:04'),
(990, '20A81A05G0', 'Lahari Taninki', '20A81A05G0@sves.org.in', '9553962275', '2022-09-11 07:00:04'),
(991, '19A81A0550', 'varshitha satti', '19A81A0550@sves.org.in', '6304205474', '2022-09-11 07:00:04'),
(992, '20A81A05N5', 'Naga Venkata Pravalika Manchina', '20A81A05N5@sves.org.in', '9515952202', '2022-09-11 07:00:05'),
(993, '20a81a05p6', 'Marapatla Kishore', 'kishoremarapatla1273@gmail.com', '9676199883', '2022-09-11 07:00:05'),
(994, '20A81A0606', 'BHOSALE SRAYA', '20A81A0606@sves.org.in', '7794953849', '2022-09-11 07:00:06'),
(995, '20A81A0617', 'SAI SWETHA GUDALA', '20A81A0617@sves.org.in', '7989191823', '2022-09-11 07:00:06'),
(996, '20A81A0597', 'Manda Meghana', 'meghanaa3579@gmail.com', '9493984345', '2022-09-11 07:00:07'),
(997, '20A81A05M1', 'Kottu Thavarna Pushkara Dharani', '20A81A05M1@sves.org.in', '9441538459', '2022-09-11 07:00:09'),
(998, '20A81A05M6', 'MADDIPATI SATHWIKA', '20A81A05M6@SVES.ORG.IN', '7013877296', '2022-09-11 07:00:09'),
(999, '20A81A0579', 'Ganapathineedi Sathvika', 'sathvika074@gmail.com', '7093591554', '2022-09-11 07:00:11'),
(1000, '20A81A0655', 'THOKALA DEVIKA', '20A81A0644@sves.org.in', '8523041181', '2022-09-11 07:00:11'),
(1001, '20A81A05A3', 'Mutta Harshitha', 'harshithamutta600@gmail.com', '9573944037', '2022-09-11 07:00:12'),
(1002, '20A81A0637', 'Devi Narni', 'narnidevi123@gmail.com', '9701942537', '2022-09-11 07:00:14'),
(1003, '20A81A05G9', 'P Nanditha sri vyshnavi', 'nandithasrivyshnavi@gmail.com', '6301291419', '2022-09-11 07:00:16'),
(1004, '20A81A05I8', 'TIRUKKOVALLURI SAI KIRAN', 'saikirantirukkovalluri4@gmail.com', '9347060671', '2022-09-11 07:00:21'),
(1005, '21A85A0521', 'P.J.V.R.Satish', '21a85a0521@sves.org.in', '9346563064', '2022-09-11 07:00:30'),
(1006, '20A81A05O6', 'RAYAVARAPU SAI NAVYA SRI', '20A81A05O6@SVES.ORG.IN', '9550603811', '2022-09-11 07:00:32'),
(1007, '20A81A05E3', 'Lohitha gollapalli', 'gollapallilohitha@gmail.com', '9493235677', '2022-09-11 07:00:45'),
(1008, '20A81A05P2', 'vemuri pallavi', 'pallavivemuri9@gmail.com', '6301456092', '2022-09-11 07:00:46'),
(1009, '20A81A05M5', 'Lingampalli Manasa Phani', 'sirimanasa2003l@gmail.com', '9381993300', '2022-09-11 07:00:47'),
(1010, '20A81A05J4', 'ADDALA LAKSHMI VEERA VENKATA PRASAD', '20a81a05j4@sves.org.in', '6302284773', '2022-09-11 07:00:55'),
(1011, '19A81A0623', 'GUNUPUDI LAKSHMI ISWARYA', '19a81a0623@sves.org.in', '9032986947', '2022-09-11 07:00:59'),
(1012, '19A81A05P5', 'khaythi sri chimmana', 'chimmanakhyathisri@gmail.com', '9492154833', '2022-09-11 07:01:15'),
(1013, '20A81A05O2', 'Pathan Tara', 'pathantara2002@gmail.com', '7995809264', '2022-09-11 07:01:31'),
(1014, '20A81A0633', 'MUNGARA SATWIKA VARSHINI', 'mungarasatwika@gmail.com', '7013980290', '2022-09-11 07:01:39'),
(1015, '20A81A05O4', 'Peethala Deepika', 'deepikapeethala999@gmail.com', '7794965784', '2022-09-11 07:01:51'),
(1016, '20A81A0619', 'JELLA. DURGA SATYA PRIYANKA', '20a81a0619@sves.org.in', '8639271420', '2022-09-11 07:01:56'),
(1017, '20A81A0658', 'VANAPALLI RAMA DEVI', '20a81a0658@sves.org.in', '7093575506', '2022-09-11 07:01:57'),
(1018, '20A81A0571', 'Bondada Mahima Kumari', 'bondadamahimakumari@gmail.com', '9346274489', '2022-09-11 07:02:01'),
(1019, '19A81A0544', 'Madhusmara Pithani', '19a81a0544@sves.org.in', '9391697769', '2022-09-11 07:02:06'),
(1020, '21A85A0501', 'Allada Yaswanth Kumar', '21A85A0501@sves.org.in', '+91 6304693454', '2022-09-11 07:02:09'),
(1021, '20A81A05L6', 'KALAPALA PRASANTHI', '20A81A05L6@sves.org.in', '7013340709', '2022-09-11 07:02:11'),
(1022, '20A81A0627', 'KUSUMANCHI SPANDANA VALLI', 'spandanavallik@gmail.com', '8019426073', '2022-09-11 07:02:11'),
(1023, '20A81A0576', 'E SAI NEEHA CHARANI', 'neehaearpina@gmail.com', '09603019865', '2022-09-11 07:02:41'),
(1024, '20A81A05J7', 'BALANAGU S V LALITHA SATYA BHAGYA SRI', '20A81A05J7@SVES.ORG.IN', '9381010782', '2022-09-11 07:02:46'),
(1025, '20A81A0607', 'Chinta Sudeepthi', 'sudeepthichinta@gmail.com', '9347991583', '2022-09-11 07:02:57'),
(1026, '20A81A05K1', 'Chimma Lakshmi Madhavi', '20a81a05k1@sves.org.in', '7416934669', '2022-09-11 07:03:05'),
(1027, '20A81A05M9', 'M.Pravallika', '20A81A05M9@sves.org.in', '07382 160849', '2022-09-11 07:03:14'),
(1028, '20A81A05K9', 'GIDDA GARAGA LAKSHMI', 'gowthamigidda3@gmail.com', '9133497498', '2022-09-11 07:03:14'),
(1029, '20A81A0577', 'Shaik Fathimunnisa', 'shaikfathimunnisa04@gmail.com', '7659885996', '2022-09-11 07:03:25'),
(1030, '20A81A0592', 'K.Esther rani', '20A81A0592@sves.org.in', '9014924547', '2022-09-11 07:03:32'),
(1031, '20A81A0642', 'PATHURI JUSMITHA', '20A81A0642@sves.org.in', '7569546412', '2022-09-11 07:03:32'),
(1032, '20A81A05I2', 'Shaik Haseena', '20a81a05i2@sves.org.in', '9666981060', '2022-09-11 07:03:42'),
(1033, '20A81A0659', 'V.S.H.S.Sushma Sri', 'sushmavelicheti24@gmail.com', '7093070329', '2022-09-11 07:03:43'),
(1034, '20A81A0642', 'PATHURI JUSMITHA', '20A81A0642@sves.org.in', '7569546412', '2022-09-11 07:03:48'),
(1035, '20A81A0584', 'Gudimetla TejaSri', 'gudimetlatejasri@gmail.com', '6305211024', '2022-09-11 07:03:53'),
(1036, '20A81A0652', 'Seelamsetti Naga satya sri', '20A81A0652@sves.org.in', '9652722767', '2022-09-11 07:04:03'),
(1037, '20A81A0572', 'Veera Bhadra Gupta Charugalla', '20a81a0572@sves.org.in', '9392968736', '2022-09-11 07:04:17'),
(1038, '20A81A0619', 'JELLA. DURGA SATYA PRIYANKA', '20a81a0619@sves.org.in', '8639271420', '2022-09-11 07:04:30'),
(1039, '20A81A0648', 'Purighella Naga Srinivasa Gayathri', '20a81a0648@sves.org.in', '9182698845', '2022-09-11 07:05:12'),
(1040, '20A81A05O1', 'parna Jaya madhuri', 'jayamadhuriparna2002@gmail.com', '9392641212', '2022-09-11 07:05:12'),
(1041, '20A81A0626', 'Kudidala Pushpa Leela Vijaya Durga', '20A81A0626@sves.org.in', '+917780281004', '2022-09-11 07:05:21'),
(1042, '20A81A05J1', 'Vangala Venkata Sri Sai Tejaswi', '20a81a05j1@sves.org.in', '9398856189', '2022-09-11 07:05:22'),
(1043, '20A81A05H7', 'Pranathi samayamanthula', 'pranathi.samay@gmail.com', '6302690826', '2022-09-11 07:05:32'),
(1044, '20A81A0518', 'GUNDAY ANVITHA RAJ', 'anvithahoney5@gmail.com', '8096978746', '2022-09-11 07:06:01'),
(1045, '20A81A0567', 'Anil Kumar Battula', '20a81a0567@svse.org.in', '8688802825', '2022-09-11 07:06:18'),
(1046, '20A81A05N7', 'PAIDIMUKKALA JAHNAVI', '20A81A05N7@sves.org.in', '9666832339', '2022-09-11 07:06:35'),
(1047, '20A81A0591', 'KOLLA SAI PAVAN LIKHITH', '20A81A0591@sves.org.in', '7093024228', '2022-09-11 07:06:41'),
(1048, '20A81A0588', 'Kalaga Venkata Sri Mounika', 'srimounikakv@gmail.com', '9492218900', '2022-09-11 07:06:42'),
(1049, '19A81A05G3', 'Maram.Devi Mounika', 'maramdevimounika@gmail.com', '9391331513', '2022-09-11 07:06:43'),
(1050, '19A81A05A7', 'Mohammad Aafreen Begum', 'aafreenbegum45@gmail.com', '9391197377', '2022-09-11 07:07:32'),
(1051, '20A81A05D2', 'A.K.N.V.Prathyusha', '20A81A05D2@sves.org.in', '8790030734', '2022-09-11 07:07:35'),
(1052, '20A81A0660', 'VETSA N V S S V MAHITA', '20A81A0660@sves.org.in', '9392897822', '2022-09-11 07:07:35'),
(1053, '21A85A0605', 'PRATTI DHANALAKSHMI', '21a85a0605@sves.org.in', '7382589998', '2022-09-11 07:07:37'),
(1054, '20A81A0636', 'Namburi sri krishna praneeth gandhi', 'Praneethnamburi03@gmail.com', '9032721505', '2022-09-11 07:07:45'),
(1055, '20A81A05C3', 'VARRE DUNDI PRIYA CHANDANA', '20A81A05C3@SVES.ORG.IN', '6281186525', '2022-09-11 07:08:08'),
(1056, '20A81A05P5', 'Y.Gayathri Devi', '20A81A05P5@SVES.ORG.IN', '8500286876', '2022-09-11 07:08:11'),
(1058, '20A81A0634', 'Mylavarapu Purneswari', '20A81A0634@sves.org.in', '7702097663', '2022-09-11 07:08:55'),
(1059, '20A81A05L4', 'Kadavakolanu Tulasi', '20A81A05L4@sves.org.in', '9704188907', '2022-09-11 07:09:15'),
(1060, '20A81A05J2', 'velagala poojitha', '20a81a05j2@sves.org.in', '8978809119', '2022-09-11 07:10:58'),
(1061, '19A81A05C9', 'A. Usha Deepika', 'ushadeepikaakkireddy@gmail.com', '9059133606', '2022-09-11 07:11:27'),
(1062, '20A81A0602', 'ANANDAM SUSHMA', '20a81a0602@sves.org.in', '9966237666', '2022-09-11 07:11:27'),
(1063, '20A81A05D5', 'Mallika.Chimmili', '20a81a05d5csec@gmail.com', '8309612391', '2022-09-11 07:12:02'),
(1064, '20A81A0622', 'KILIMI SAISRI', 'kilimisaisri3@gmail.com', '8886955591', '2022-09-11 07:12:12'),
(1065, '20A81A0629', 'Madeti Jyothi Sai Siri', '20A81A0629@sves.org.in', '6305558242', '2022-09-11 07:12:48'),
(1066, '20A81A0619', 'JELLA.DURGA SATYA PRIYANKA', '20a81a0619@sves.org.in', '8639271420', '2022-09-11 07:13:10'),
(1067, '20A81A05L0', 'GOLLA MOHA BHAVAGNA', 'bhavagnagolla333@gmail.com', '7569555204', '2022-09-11 07:13:52'),
(1068, '20A81A0647', 'Pichikala Chandra Mounika', 'mounikapichikala9999@gmail.com', '6300167759', '2022-09-11 07:13:55'),
(1069, '19A81A05K3', 'Dhanaboyina sunitha', '19a81a05k3@sves.org.in', '6305854923', '2022-09-11 07:13:56'),
(1070, '20A81A0541', 'pavan jakkamsetti', 'jakkamsettipavan@gmail.com', '9492608699', '2022-09-11 07:14:04'),
(1071, '20A81A0628', 'MADDU VATSALYA', 'vatsalyamaddu2003@gmail.com', '9292607529', '2022-09-11 07:14:34'),
(1072, '20A81A0605', 'Bayya Tejaswini Yadav', 'tejubayya79@gmail.com', '9346872775', '2022-09-11 07:14:43'),
(1073, '20A81A0509', 'D.MANIKANTA', '20A81A0509@sves.org.in', '9515517054', '2022-09-11 07:15:23'),
(1074, '20A81A05G8', 'palepu kesava hanuma sai sriram', 'srirampalepu558@gmail.com', '9848308188', '2022-09-11 07:15:56'),
(1075, '20A81A0514', 'GANGOLU PUJITHA', 'gangolupujitha@gmail.com', '80081000052', '2022-09-11 07:16:04'),
(1076, '20A81A05B4', 'P sumasri', '20A81A05B4@sves.org.in', '7993689664', '2022-09-11 07:16:06'),
(1077, '20A81A05N8', 'PAMMI MANOJ DASU', 'pammimanojdasu9@gmail.com', '8555890362', '2022-09-11 07:16:36'),
(1078, '20A81A0594', 'K.SRAVANI', '20A81A0594@sves.org.in', '9573799158', '2022-09-11 07:16:55'),
(1079, '20A81A0624', 'Konala Sai Tejaswi', '20a81a0624@sves.org.in', '7032006696', '2022-09-11 07:17:02'),
(1080, '20A81A0551', 'Seelaboina Vinay Kumar', '20A81A0551@sves.org.in', '6302358455', '2022-09-11 07:17:02'),
(1081, '20A81A05D1', 'Arigela Sudheer', '20A81A05D1@sves.org.in', '9573381277', '2022-09-11 07:17:06'),
(1082, '20A81A0548', 'P.Suvarna Raju', 'vr0168353@gmail.com', '7993634550', '2022-09-11 07:17:12'),
(1083, '20A81A0610', 'SRINIJA CHOPPALA', '20A81A0610@sves.org.in', '7032233752', '2022-09-11 07:17:13'),
(1084, '20A81A05E5', 'Kagita Chandu Priya', '20A81A05E5@SVES.ORG.IN', '9963960966', '2022-09-11 07:18:02'),
(1085, '20A81A05O2', 'Pathan Tara', 'pathantara2002@gmail.com', '7995809264', '2022-09-11 07:18:06'),
(1086, '20A81A05F2', 'Amrutha Ketali', 'ketaliamrutha@gmail.com', '6301934749', '2022-09-11 07:18:09'),
(1087, '20A81A05E0', 'Durga Dhanush', 'dddhanush03@gmail.com', '7989679464', '2022-09-11 07:19:22'),
(1088, '20A81A0620', 'Kankatala Sri Lakshmi Swetha', 'srilakshmiswetha04@gmail.com', '9989476034', '2022-09-11 07:19:46'),
(1089, '20A81A0509', 'D.MANIKANTA', '20A81A0509@sves.org.in', '9515517054', '2022-09-11 07:20:45'),
(1090, '20A81A05K6', 'Dwarampudi Lakshmi Sai Ajay Kumar Reddy', 'ajayreddydwarampudi@gmail.com', '8143537348', '2022-09-11 07:21:22'),
(1091, '20A81A0624', 'Konala Sai Tejaswi', '20a81a0624@sves.org.in', '7032006696', '2022-09-11 07:21:50'),
(1092, '20A81A0569', 'Bandi Devika', 'devikabandi1310@gmail.com', '9550769004', '2022-09-11 07:22:04'),
(1093, '20A81A05F3', 'satyasivani', 'satyasivanikommina@gmail.com', '7670833057', '2022-09-11 07:23:38'),
(1094, '20A81A0580', 'G.KOTESWARI VENKATA SAI', '20a81a0580@sves.org.in', '9133974506', '2022-09-11 07:25:18'),
(1095, '20A81A05L8', 'KETHA JYOTHI DURGA', '20A81A05L8@SVES.org.in', '7842526323', '2022-09-11 07:25:54'),
(1096, '20A81A05D9', 'DONDAPATI RAMYA', 'ramyadondapati6281@gmail.com', '6281381040', '2022-09-11 07:27:37'),
(1097, '20A81A05D9', 'DONDAPATI RAMYA', 'ramyadondapati6281@gmail.com', '6281381040', '2022-09-11 07:27:44'),
(1098, '20A81A05G8', 'palepu kesava hanuma sai sriram', 'srirampalepu558@gmail.com', '9848308188', '2022-09-11 07:28:31'),
(1099, '20A81A0539', 'P.DIVYA PAVANI', 'thrimurtulupala864@gmail.com', '9493476494', '2022-09-11 07:29:23'),
(1100, '20A81A05E7', 'K.Nikhila', 'nihkilakanudkuri@ggmail.com', '7981309558', '2022-09-11 07:29:45'),
(1101, '20A81A05I4', 'Shaik Tanveer Basha', '20a81a05i4@sves.org.in', '9542626999', '2022-09-11 07:32:10'),
(1102, '20A81A05I4', 'Shaik Tanveer Basha', '20a81a05i4@sves.org.in', '9542626999', '2022-09-11 07:33:10'),
(1103, '20A81A0627', 'KUSUMANCHI SPANDANA VALLI', 'spandanavallik@gmail.com', '8019426073', '2022-09-11 07:34:13'),
(1104, '20A81A05I4', 'Shaik Tanveer Basha', '20a81a05i4@sves.org.in', '9542626999', '2022-09-11 07:34:28'),
(1105, '20A81A0509', 'D.Manikanta', '20A81A0509@sves.org.in', '9515517054', '2022-09-11 07:34:29'),
(1106, '20A81A05J3', 'V.Jahnavi', 'jahnaviveliganti.1304@gmail.com', '9014674189', '2022-09-11 07:34:34'),
(1107, '20A81A05I4', 'Shaik Tanveer Basha', '20a81a05i4@sves.org.in', '9542626999', '2022-09-11 07:37:33'),
(1108, '20A81A0659', 'V.S.H.S.Sushma Sri', 'sushmavelicheti24@gmail.com', '7093070329', '2022-09-11 07:38:39'),
(1109, '20A81A0639', 'TEJASWI NIMMAKAYALA', 'tejaswiteju13579@gmail.com', '9381192648', '2022-09-11 07:39:45'),
(1110, '20A81A05J4', 'ADDALA LAKSHMI VEERA VENKATA PRASAD', '20a81a05j4@sves.org.in', '6302284773', '2022-09-11 07:39:53'),
(1111, '20A81A0605', 'Bayya Tejaswini Yadav', '20A81A0605@sves.org.in', '9346872775', '2022-09-11 07:41:05'),
(1112, '20A81A0514', 'GANGOLU PUJITHA', 'gangolupujitha@gmail.com', '80081000052', '2022-09-11 07:41:24'),
(1113, '19A81A05C9', 'A. Usha Deepika', 'ushadeepikaakkireddy@gmail.com', '9059133606', '2022-09-11 07:41:40'),
(1114, '20A81A05B4', 'P sumasri', '20A81A05B4@sves.org.in', '7993689664', '2022-09-11 07:42:32'),
(1115, '20A81A05K4', 'Dondapati Sowmya', 'sowmyadondapati01@gmail.com', '9392396550', '2022-09-11 07:44:00'),
(1116, '20A81A05B4', 'P sumasri', '20A81A05B4@sves.org.in', '7993689664', '2022-09-11 07:44:20'),
(1117, '20A81A05N8', 'PAMMI MANOJ DASU', 'pammimanojdasu9@gmail.com', '8555890362', '2022-09-11 07:45:54'),
(1118, '20A81A05B4', 'P sumasri', '20A81A05B4@sves.org.in', '7993689664', '2022-09-11 07:46:27'),
(1119, '20A81A0514', 'GANGOLU PUJITHA', 'gangolupujitha@gmail.com', '80081000052', '2022-09-11 07:47:20'),
(1120, '20A81A0637', 'Devi Narni', 'narnidevi123@gmail.com', '09701942537', '2022-09-11 07:50:02'),
(1121, '20A81A0504', 'Arigela Jayamani', '20A81A0504@sves.org.in', '6304550811', '2022-09-11 07:50:04'),
(1122, '20A81A05H7', 'pranathi samayamanthula', 'pranathi.samay@gmail.com', '6302690826', '2022-09-11 07:54:56'),
(1123, '20A81A0539', 'P DIVYA PAVANI', 'thrimurtulupala864@gmail.com', '9493476494', '2022-09-11 08:04:54'),
(1124, '19A81A0515', 'Purvika', 'ghantapurvikaprasad@gmail.com', '9390393051', '2022-09-11 08:06:18'),
(1125, '20A81A0571', 'Bondada Mahima Kumari', 'bondadamahimakumari@gmail.com', '9346274489', '2022-09-11 08:06:44'),
(1126, '19A81A0534', 'Matha Venkata Harsha Vardhan', 'mathaharsha@gmail.com', '9908069266', '2022-09-11 08:06:59'),
(1127, '20A81A0642', 'PATHURI JUSMITHA', '20A81A0642@sves.org.in', '7569546412', '2022-09-11 09:07:37');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `rollnumber` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `rollnumber`, `score`, `status`, `datetime`) VALUES
(1732, '20A81A0619', 0, '-', '2022-09-11 07:04:13'),
(1733, '20A81A0617', 13, '-', '2022-09-11 07:09:18'),
(1734, '20A81A05L6', 16, '-', '2022-09-11 07:13:29'),
(1735, '20A81A0633', 21, '-', '2022-09-11 07:15:49'),
(1736, '20A81A05N5', 23, '-', '2022-09-11 07:18:00'),
(1737, '20A81A05M1', 21, '-', '2022-09-11 07:18:26'),
(1738, '20A81A05M6', 21, '-', '2022-09-11 07:18:41'),
(1739, '20A81A05F9', 21, '-', '2022-09-11 07:18:54'),
(1740, '20A81A0606', 20, '-', '2022-09-11 07:18:56'),
(1741, '20A81A05O4', 16, '-', '2022-09-11 07:19:02'),
(1742, '20a81a05p6', 16, '-', '2022-09-11 07:19:27'),
(1743, '20A81A0518', 19, '-', '2022-09-11 07:19:45'),
(1744, '20A81A0624', 0, '-', '2022-09-11 07:19:53'),
(1745, '20A81A0653', 20, '-', '2022-09-11 07:20:01'),
(1746, '20A81A0637', 15, '-', '2022-09-11 07:20:18'),
(1747, '20A81A05J7', 18, '-', '2022-09-11 07:21:45'),
(1748, '20A81A05E0', 16, '-', '2022-09-11 07:24:21'),
(1749, '20A81A0660', 15, '-', '2022-09-11 07:24:41'),
(1750, '19A81A05A7', 9, '-', '2022-09-11 07:24:54'),
(1751, '20A81A05F3', 1, '-', '2022-09-11 07:25:59'),
(1752, '20A81A0620', 16, '-', '2022-09-11 07:27:51'),
(1753, '19A81A05K3', 23, '-', '2022-09-11 07:30:47'),
(1754, '19A81A05C9', 20, '-', '2022-09-11 07:30:55'),
(1755, '20A81A0622', 13, '-', '2022-09-11 07:31:20'),
(1756, '20A81A0648', 15, '-', '2022-09-11 07:32:45'),
(1757, '20A81A0647', 16, '-', '2022-09-11 07:34:06'),
(1758, '20A81A0610', 14, '-', '2022-09-11 07:35:20'),
(1759, '19A81A0554', 23, '-', '2022-09-11 07:36:03'),
(1760, '20A81A0607', 13, '-', '2022-09-11 07:37:00'),
(1761, '20A81A0634', 20, '-', '2022-09-11 07:37:28'),
(1762, '20A81A0591', 22, '-', '2022-09-11 07:37:53'),
(1763, '20A81A0626', 20, '-', '2022-09-11 07:38:09'),
(1764, '20A81A05H7', 17, '-', '2022-09-11 07:38:15'),
(1765, '20A81A05M5', 14, '-', '2022-09-11 07:39:42'),
(1766, '20A81A05G8', 16, '-', '2022-09-11 07:39:49'),
(1767, '20A81A05N7', 18, '-', '2022-09-11 07:40:04'),
(1768, '20A81A05A4', 24, '-', '2022-09-11 07:40:17'),
(1769, '20A81A05P2', 14, '-', '2022-09-11 07:40:31'),
(1770, '20A81A0627', 21, '-', '2022-09-11 07:40:56'),
(1771, '20A81A0572', 23, '-', '2022-09-11 07:41:10'),
(1772, '20A81A05D9', 14, '-', '2022-09-11 07:41:57'),
(1773, '20A81A05P5', 16, '-', '2022-09-11 07:42:00'),
(1774, '21A85A0501', 17, '-', '2022-09-11 07:42:11'),
(1775, '20A81A0659', 22, '-', '2022-09-11 07:42:16'),
(1776, '20A81A05K1', 21, '-', '2022-09-11 07:42:29'),
(1777, '20A81A0567', 22, '-', '2022-09-11 07:43:12'),
(1778, '20A81A0658', 19, '-', '2022-09-11 07:45:29'),
(1779, '21A85A0605', 20, '-', '2022-09-11 07:46:25'),
(1780, '19A81A05K8', 30, '-', '2022-09-11 07:47:11'),
(1781, '19A81A05K5', 23, '-', '2022-09-11 07:47:46'),
(1782, '20A81A0541', 17, '-', '2022-09-11 07:48:09'),
(1783, '20A81A0584', 23, '-', '2022-09-11 07:48:41'),
(1784, '20A81A05K4', 14, '-', '2022-09-11 07:48:43'),
(1785, '20A81A0639', 16, '-', '2022-09-11 07:51:15'),
(1786, '20A81A0612', 16, '-', '2022-09-11 07:51:18'),
(1787, '19A81A05G3', 38, '-', '2022-09-11 07:52:25'),
(1788, '20A81A0605', 22, '-', '2022-09-11 07:52:54'),
(1789, '19A81A0544', 23, '-', '2022-09-11 07:53:41'),
(1790, '20A81A05K9', 23, '-', '2022-09-11 07:54:37'),
(1791, '20A81A05I2', 25, '-', '2022-09-11 07:56:21'),
(1792, '20A81A0588', 24, '-', '2022-09-11 07:56:38'),
(1793, '20A81A0579', 25, '-', '2022-09-11 07:57:31'),
(1794, '20A81A05A3', 29, '-', '2022-09-11 07:57:41'),
(1795, '20A81A0597', 25, '-', '2022-09-11 07:58:05'),
(1796, '20A81A0514', 17, '-', '2022-09-11 07:58:12'),
(1797, '20A81A05D2', 25, '-', '2022-09-11 07:58:25'),
(1798, '20A81A0576', 24, '-', '2022-09-11 07:59:06'),
(1799, '20A81A05J4', 26, '-', '2022-09-11 07:59:17'),
(1800, '20A81A05B4', 20, '-', '2022-09-11 08:04:11'),
(1801, '20A81A05K6', 22, '-', '2022-09-11 08:07:55'),
(1802, '20A81A0571', 15, '-', '2022-09-11 08:18:21'),
(1803, '19A81A0534', 28, '-', '2022-09-11 08:25:46'),
(1804, '20A81A05D8', 23, '-', '2022-09-11 08:36:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1128;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1805;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
