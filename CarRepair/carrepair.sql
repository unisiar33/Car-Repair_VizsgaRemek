-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 01:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrepair`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `userid` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `City` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Street` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Email` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Telephone` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `password` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`userid`, `name`, `City`, `Street`, `Email`, `Telephone`, `password`) VALUES
(1, 'Kiss Géza', 'Budapest', 'Kengyel', 'kissg@gmail.com', '+363032184567', 'kissgeza'),
(2, 'Norbert Hollander', 'Érd', 'Porcsinrózsa u. ', 'norbert.hollander@gmail.com', 'telephone', '$2b$10$UD45bk.kJt5wz2VYcScIuupgCUZUDCvX.V3wZRseTF1UIRgESyvwm'),
(3, 'Hollander Hetti', 'Üröm', 'Csókavár u. 52', 'hetti.hollander@youtubekids.com', '06202238987', '$2b$10$BuJ8rEXXLtBuArBylpTc9OqtGmGUEVYjQRaJnt9XwasL7Rf12lwLC'),
(4, 'Kresz Géza', 'Budapest', 'Kresz Géza u. 85', 'info@brfk.hu', '112', '$2b$10$tqMGpgVPR689h9FyE4o3..HKtb0iZINSgJCqMJGFoerQ1YhEwem7.'),
(5, 'Tűzoltó Sam', 'Körmöspálcás', 'Tűz u.1', 'sam@kormostuzolto.hu', '114', '$2b$10$cclbDCQH9cPpTnxiJRu1HuAKt1cgz6TqBzPlXFmXSKE30.2EgGZCu'),
(6, 'Hamberger Péter', 'Érd', 'Orgona u. 1', 'hamberger.peter@freemail.hu', '0628356588', '$2b$10$acfVsaIBX/4A/0fSNU1ajegnXtAAWjsA9bSVDsQSJN0FxPWm2xxsO'),
(7, 'Jázmin Hercegnő', 'Agrabah', 'Princess 1.', 'jasmin@jasmin.com', '069012312345', '$2b$10$IhGOZshXE88uLRmjFN6nM.T3hyMedWn61QnOIPBWsOn7ZZaq2zQpC'),
(8, 'Aladdin', 'Agrabah', 'Thief Alley 2.', 'aladdin@abu.com', '+921 12315345', '$2b$10$5cnMp21y4Vz7bO9CZptAQObUhkgPSogzmwedQSwBsUPpDI5RKUrFO'),
(9, 'Sergej Lavrov', 'Kiev', 'Mir 1.', 'Sergi@redalert.ru', '+111111111111', '$2b$10$RQD8pSGkJgs0CvZs7Sjxae4dnRr3iGuxXZDVToRhXJA87F5TuHtC6'),
(10, 'Vlagyimir Putin', 'Moszkva', 'Red Square 1', 'me.stalin@redalert.ru', '+1111111111111', '$2b$10$vDi8BYAQtfJe84mZWg43NuVUCQU1VQSdyoGqghuzV.jVjUeVdKvb2'),
(11, 'Joe Bidden', 'DC ', 'White street 1.', 'mrpresident@captainchaos.com', '+1 12345678987654321', '$2b$10$deh7iEkv4iCPLg19lk1Va.eYpZizShFcBEB.Z5b4qpBZXQ9qRBFMK'),
(12, 'Admin', 'Budapest', 'Porcsinrózsa  utca', 'admin@admin.hu', '06202238986', '$2b$10$Kr.inXGiGyeneUi6EfhwTOfSndVzD49E4wFGuSGvowXKPK7fbI72W'),
(14, 'Ken Rock', 'Los Angeles', 'Broken Dreams Boulvard 1', 'kenrock@monster.com', '+123456789', '$2b$10$5aUw2InBvDHiXsPJ28OXp.NdjnBKRqqbpesvvO3.tc.NPwDkEvnbu'),
(15, 'Arany János', 'Budapest', 'Arany János u.1', 'aranyjanos@petofi.hu', '0670232423526', '$2b$10$0zL16guOZs5h6NdebszBRev1Z.23.7q2.UfaeYzTYwaK2Gdi90XMm'),
(16, 'Arany László', 'Budapest', 'Arany János u.1', 'aranyjanos@petofi.hu', '0670232423526', '$2b$10$l9uU0mpx4CLAqO/XtSUUOONDYAtTQ0LbZMAzYvMfwzXIg/QWy.R0y'),
(17, 'Mekk Elek', 'Budapest', 'Ezermester 1.', 'akitudaztud@profi.hu', '0670226532423526', '$2b$10$A5Gi7FI04uRS0MV7xoE4De8aI2hajBs2.Knu/9GvFTzrnIKJRRGqG'),
(18, 'Niki Lauda', 'Wien', 'Haubptstrasse 1', 'theone@ferrari.it', '004300065656', '$2b$10$RuKQJT27Cn1D8QKpYY0EA.ZQj4aboA9KK18XzJh1s2qxZiJFCmCPK'),
(19, 'Michael Schumacher', 'Berlin', 'Haubptstrasse 1', 'thegreatest@ferrari.it', '004900065656', '$2b$10$MvgETnqa4I4.DIvrKGOWy.PCe6CpZ.b6NWw0v0AUk34YwrPLu1s/u'),
(20, 'Mikka Hakinnen', 'Helsinki', 'Main street 56', 'snowmen@mclaren.co.uk', '008700065656', '$2b$10$UJ9auZx.aZLYcVWpG9eWKOEFtA5rQ9btXE/PqvIs/LpG5oqhlwffS'),
(21, 'Reichard Tamás', 'Szentendre', 'Fő u. 134.', 'tamas.reichard@gmail.com', '+3620456789465', '$2b$10$au77eJG7mjx6sdcMZO2o3ux21YvHvti8NY6TlEpck5zTQ3kA/CMIK'),
(22, 'Vágási Rita', 'Szentendre', 'Fő u. 134.', 'rita.vagasi@gmail.com', '+3620321456789', '$2b$10$cjrnYz4q2r0O0AVq1bycMOIBjZG8aW0gtFcIRfmQmJb5IMVOP2xRu'),
(23, 'Vágási Jánosné', 'Diósd ', 'Gyár u 89.', 'gomba@freemail.hu', '+362012315464', '$2b$10$XTuJcKWD3o4DDEFrsMSeo.hc26l/O7K285I2viCKOW84L2r/gg9wm'),
(24, 'Vágási János', 'Diósd ', 'Gyár u 89.', 'vagasiapa@gmail.com', '+362065454867', '$2b$10$x.ma7I8zaYPNU0g6At8My.CGsltL1TzXuhgeaKC8dHECQ0HWCvqeq'),
(25, 'Molnár Attila', 'Érd', 'Sárd u. 86', 'attila.molnar.ablak@gmail.com', '+3670456478679', '$2b$10$YgSSYH3HeK./Q.Uc3r32iOkHav4clEgUCRDGfKADLFqrmhkGJ7Dg6'),
(26, 'Kerekes Máté', 'Budapest', 'Enikő u. 112', 'mate.kerekes@gmail.com', '+36467899714', '$2b$10$hfPZgyBeyYeycJ7UZqgYleZGzyK.VcHracKj/v7zY6EUeOW6mumhC'),
(27, 'Kovács István', 'Budapest', 'Kalapka utca 74.', 'kovacsi@gmail.com', '+36304598456', '$2b$10$27nDDI/3L0WsttzusuCItud3yRP.qIy.A6SuDSYuWrplAFkSXY9NS'),
(28, 'Mendi Bertalan', 'Budapest', 'Vadrózsa utca 12.', 'mendib@gmail.com', '+36706189523', '$2b$10$ROizzXhO/Cl59evjQ72Vj.u7aSx86scmI.HV0MRxx7X0IbNI3NVRO'),
(29, 'Kékesi Tamás', 'Budapest', 'Csokonai utca 1/b', 'kekesitamas22@gmail.com', '+36203436858', '$2b$10$I.pnia/XsR.6TbEa4B2XpuS13fHeLygOU2kzO.XLiUl8RNS.QuQXG'),
(30, 'Kelemen Géza', 'Vecsés', 'Bocskai utca 49.', 'gezakelemen@freemail.com', '+36301318456', '$2b$10$GkeVuuZhqq0.VVgshVsgTOBkpTZmKRivWObRi0wI9P9u8OTS3AZRy'),
(31, 'Gados Ferenc', 'Budapest', 'Gólya utca 31.', 'fgados@gmail.com', '+36305978485', '$2b$10$AhQuRHo82bi9C09BbfOHa.7zTMFL1YIKuIGiZLnlfA.AKY/iHTnki'),
(32, 'Gadosné Kalocsai Ilona', 'Budapest', 'Gólya utca 62.', 'ilona68@gmail.com', '+36308568994', '$2b$10$dfx1qm15ITeaM29i7rsodO1NwTyVd3FGD6GFIxAolKXq5A3DP/Gbe'),
(33, 'Németh László', 'Gyál', 'Erdősor utca 43.', 'nemeth@freemail.com', '+36702345659', '$2b$10$aV86z9vo5/4zR4U/5FdJGemVMPLaHfYdsydaNQnq3vLAf83PsAMZ6'),
(34, 'Klósz Renátó', 'Budapest', 'Ady Endre út 11.', 'kloszi@gmail.com', '+36703578468', '$2b$10$vPShFugAbfjS.E8Lwmy3EORkGMKLLg76SpP1aY1SRU7zWTCWGZXtG'),
(35, 'Kaposvári Imre', 'Vecsés', 'Juhász Gyula utca 73.', 'imike32@gmail.com', '+36705489597', '$2b$10$4pb47G.rW2jysHZ4lg.zhOZm1.ya6C5ObLpke8S927MsCfyv76j8S'),
(36, 'Juhász István', 'Üllő', 'Bercsényi utca 9.', 'juhistvan@freemail.com', '+36204648584', '$2b$10$9ao4pT29daKCoxPMTmifcOVsC6wel5fqUtmBR1DVrIBCGbXBznYnG'),
(37, 'Horváth Bence', 'Alsónémedi', 'Kápolna utca 63.', 'bence8742@gmail.com', '+36204139854', '$2b$10$3yqpmAnsHyG80un.lUaI8uDEm4U57rTdcx3qjcpSQqOqQGd356T5e'),
(38, 'Szentpéteri Gizella', 'Pécel', 'Felsősor utca 55.', 'gizella776gmailcom', '+36201389451', '$2b$10$k1Av2prFA9iN8DW7IQCydeljTXdk0VXjT0MTo7tZN3LL/BdmqENmu'),
(39, 'Bede László', 'Budapest', 'Lajos utca 8.', 'laszlo78@gmail.com', '+36703239436', '$2b$10$XNqANRuI7ywFOkokyBkrTedrm95R4vscksIeeBaW8sbM2rmB/OfPi'),
(40, 'Pere László', 'Budapest', 'Bojtár utca 3.', 'pere@freemail.com', '+36709946512', '$2b$10$LZEx.Qgp5M58JHM0z58tVOEjqmq02u.DY3Ti5MNWVpLJpdqScBu8u'),
(41, 'Göbölyös Zsolt', 'Budapest', 'Csillaghegyi út 57.', 'zsolt@gmail.com', '+36301229497', '$2b$10$Lzhxnon5g5GEeKTfLeMKIOtkUY9pUH7YHFGymFBfALBla5bypQ9su'),
(42, 'Támadi Viktor', 'Budapest', 'Gödöllői utca 77.', 'viktor33@gmail.com', '+36304648482', '$2b$10$MvoHiuj0vuRXxgvejbtYFeLqz6hc2Brc1CxvxxynOcfxwhuOE8yfq'),
(43, 'Szlanka Gergely', 'Budapest', 'Szép utca 32.', 'gergely@freemail.com', '+36204563138', '$2b$10$tr.Jqg1RL120VgTKuRrwxeCP3nh2kozs7G7Iohk2unTLQCkyIhMcS'),
(44, 'Pál András', 'Budapest', 'Csóka utca 69.', 'andris55pal@gmail.com', '+36302899486', '$2b$10$rIIg1myqy90hlO1x4bZsEeQeu.MPh/2ZBFbWhI7baHaO6eGRSso.K'),
(45, 'Faragó Ábel', 'Csömör', 'Anna utca 4.', 'abelfarago@gmail.com', '+36705466563', '$2b$10$i2k.mTxnjPp9/KBnruLfBOEIGUqReF4X6W8vMMZx.Ptkcj8vmUdRa'),
(46, 'Fülöp Dániel', 'Budapest', 'Lipóti utca 73.', 'danielfulop@freemail.com', '+36703238483', '$2b$10$kS7/4dsKz4iXi8aE2Qm3Oui0W3jIE5DI8GMUwlJ.UE.TgN9OveLcK');

-- --------------------------------------------------------

--
-- Table structure for table `fleet`
--

CREATE TABLE `fleet` (
  `carId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `Vendor` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Type` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `LicensePlate` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `VIN_number` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Fuel` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `CubicCapacity` int(11) NOT NULL,
  `Power` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `fleet`
--

INSERT INTO `fleet` (`carId`, `userId`, `Vendor`, `Type`, `LicensePlate`, `VIN_number`, `Fuel`, `CubicCapacity`, `Power`) VALUES
(9, 2, 'Peugeot', '307 Break', 'IMN 624', 'FR307161234NFUTU5121424535', 'Gasoline', 1596, 110),
(26, 2, 'Alfa Romeo', '156', 'JTD865', 'IT1323245JTD198V2321425356', 'Diesel', 1896, 85),
(30, 27, 'Skoda', 'Octavia', 'MTC-905', '4NUDT13S962700984', 'Gasoline', 1984, 230),
(31, 27, 'Toyota', 'Yaris', 'SKE-704', 'KM8JT3AC2DU583865', 'Gasoline', 998, 65),
(32, 28, 'Toyota', 'Prius', 'SDW-264', '1HGEM21292L047875', 'Gasoline', 1798, 99),
(33, 29, 'Ford', 'Mustang', 'PDX-400', '1G8ZH1277XZ105148', 'Gasoline', 4951, 421),
(34, 29, 'Porsche', '911', 'PRS-911', '2CNBJ1365W6902635', 'Gasoline', 3614, 345),
(35, 30, 'Alfa Romeo', 'GT', 'SAP-932', '1C3BF66P0GX570598', 'Gasoline', 1970, 166),
(36, 31, 'Mercedes-Benz', 'CLA', 'RRH-050', '1GTEK19RXVE536195', 'Gasoline', 1332, 136),
(37, 31, 'Mercedes-Benz', 'GLC', 'RSE-384', 'JH4DA3453GS006314', 'Gasoline', 1991, 245),
(38, 32, 'Mercedes-Benz', 'A 180', 'RWA-888', 'JL5TA3453GS256378', 'Gasoline', 1332, 136),
(39, 33, 'Chevrolet', 'Aveo', 'LCW-341', '1FMCU04112KA71263', 'Gasoline', 1150, 72),
(40, 34, 'BMW', '318i', 'MZP-215', '1GCHK29U87E198693', 'Gasoline', 1995, 143),
(41, 35, 'Fiat', 'Tipo', 'NZW-843', 'KMHDU4AD5AU136970', 'Gasoline', 1598, 120),
(42, 35, 'Fiat', '500', 'PHE-572', 'JN6MD06S2BW031939', 'Gasoline', 1272, 69),
(43, 36, 'Tesla', 'Model 3', 'TBZ-177', 'KLATA52671B611178', 'Electric', 0, 513),
(44, 37, 'BMW', 'i3', 'SRA-102', '1J4GW48S94C420221', 'Electric', 0, 170),
(45, 37, 'Skoda', 'Octavia', 'TBJ-615', 'WD5WD641525381291', 'Diesel', 1968, 150),
(46, 38, 'Citroen', 'C4', 'LOA-887', '2HGES15252H603204', 'Diesel', 1560, 90),
(47, 39, 'Peugeot', '206', 'KRG-792', '2C3KA73WX6H237747', 'Gasoline', 1398, 68),
(48, 39, 'Nissan ', 'Navara', 'PPX-995', '3B7HF13Y81G193584', 'Diesel', 2298, 190),
(49, 40, 'Daewoo', 'Matiz', 'HDA-359', 'WDBHA33G2XF844170', 'Gasoline', 796, 52),
(50, 41, 'Volkswagen', 'Golf', 'SLK-780', 'ZFFEW58A660144998', 'Diesel', 1968, 150),
(51, 42, 'Volvo', 'S60', 'INF-229', '1FMZK05135GAGG488', 'LPG', 2435, 140),
(52, 43, 'Volvo', 'XC40', 'SUZ-835', 'JH4DA9460PS008002', 'Electric', 0, 408),
(53, 44, 'Ford', 'Mustang', 'SXA-540', '1J4GZ58S9VC710649', 'Electric', 0, 351),
(54, 45, 'Honda', 'Civic', 'SZE-727', 'JH4KA8150MC012098', 'Gasoline', 988, 129),
(55, 46, 'Hyundai', 'I20', 'SYJ-267', 'JH4KA4540LC016127', 'Gasoline', 1197, 84);

-- --------------------------------------------------------

--
-- Table structure for table `worksheet`
--

CREATE TABLE `worksheet` (
  `ticketid` int(11) NOT NULL,
  `Jstatus` int(20) NOT NULL DEFAULT 0,
  `carid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateStart` date NOT NULL,
  `dateEnd` date NOT NULL,
  `Problem` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `jobType` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `jobDone` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `mileage` int(11) NOT NULL,
  `Parts` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `TotalSum` int(11) NOT NULL,
  `mechanic` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `workhours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `worksheet`
--

INSERT INTO `worksheet` (`ticketid`, `Jstatus`, `carid`, `userid`, `dateStart`, `dateEnd`, `Problem`, `jobType`, `jobDone`, `mileage`, `Parts`, `TotalSum`, `mechanic`, `workhours`) VALUES
(16, 1, 26, 2, '2022-03-28', '2022-03-28', 'Futómű balra húz', 'General mechanics', 'Futómű beállítás', 171522, '--', 25623, 'Bill Right', 2),
(22, 1, 30, 27, '2022-04-15', '2022-04-15', 'Kopott abroncsok', 'Tyre change', 'Resolved job', 162351, '4x LingLong Greenmax All Season', 110000, 'Eng. Thomas Doll', 1),
(23, 1, 30, 27, '2022-05-15', '2022-05-15', 'Időszakos olajcsere', 'General mechanics', 'Planned job', 0, '5.5L 5W-30 motorolaj, olajszűrő, pollenszűrő, levegőszűrő', 50000, 'Eng. Thomas Doll', 2),
(24, 1, 30, 27, '2022-05-14', '2022-04-14', 'Bal tompított fényszóró nem ég', 'General electronics', 'Planned job', 0, 'Osram H4 izzó (pár)', 8000, 'Kurt Alfredson', 1),
(25, 1, 31, 27, '2022-03-16', '2022-03-17', 'Karosszéria hibák javítása', 'General mechanics', 'Resolved job', 144274, 'Első lökhárító (csere), jobb első sárvédő (javítás), rendszámtábla keret (csere)', 130000, 'Joe Cocker', 8),
(26, 1, 32, 28, '2022-03-11', '2022-03-11', 'Egyenetlen úttartás', 'General mechanics', 'Első stabilizátor rúdak és szilentek cseréje', 367161, 'Első stabilizátor rúdak és szilentek', 85000, 'Eng. Thomas Doll', 4),
(27, 1, 32, 28, '2022-03-17', '2022-03-17', 'Általános átvizsgálás', 'General mechanics', 'Resolved', 367243, '-', 15000, 'Bill Right', 1),
(28, 1, 32, 28, '2022-03-17', '2022-03-17', 'MOT', 'MOT', 'Resolved', 367279, '-', 22000, 'Bill Right', 1),
(29, 1, 33, 29, '2021-12-10', '2021-12-10', 'Kopott gumiabroncsok', 'Tyre change', 'Resolved', 34980, '4x Michelin Pilot Sport 4S', 550000, 'Eng. Thomas Doll', 1),
(30, 1, 33, 29, '2021-12-17', '2021-12-17', 'MOT', 'MOT', 'Resolved', 35020, '-', 22000, 'Eng. Thomas Doll', 1),
(31, 1, 33, 29, '2022-04-01', '2022-04-01', 'Csikorgó, fémes hang fékezésnél a kocsi elejéből', 'General mechanics', 'Első fékbetétek valamint féktárcsák cseréje', 35320, '2x fékbetét, 2x féktárcsa', 370000, 'Bill Right', 3),
(32, 1, 34, 29, '2021-12-10', '2021-12-10', 'Kopott gumiabroncsok', 'Tyre change', 'Resolved', 677344, '4x Pireli Pzero Winter', 345000, 'Eng. Thomas Doll', 1),
(33, 1, 34, 29, '2022-01-20', '2022-01-20', 'Repedt szélvédő', 'General mechanics', 'Unresolved', 677814, 'Első szélvédő', 1650000, 'Bill Right', 9),
(34, 1, 35, 30, '2021-11-09', '2021-11-09', 'Autóvillamossági problémák', 'General electronics', 'Meghibásodott akkumlátor cseréje', 185344, 'Varta akkumlátor', 55000, 'Eng. Thomas Doll', 3),
(35, 1, 35, 30, '2021-11-26', '2021-11-26', 'Check engine lámpa, ABS problémák', 'General mechanics', 'hibakód olvasás és ABS vezérlő cseréje', 185491, 'ABS vezérlőegység és jeladó', 486000, 'Bill Right', 4),
(36, 1, 35, 30, '2021-11-29', '2021-11-29', 'MOT', 'MOT', 'Unresolved', 185528, 'Nem jelent meg a tulajdonos a gk-val', 22000, 'Bill Right', 1),
(37, 1, 35, 30, '2021-12-01', '2021-12-01', 'MOT', 'MOT', 'Resolved', 185568, '-', 22000, 'Bill Right', 1),
(38, 1, 36, 31, '2022-01-05', '2022-01-05', 'Időszakos olajcsere', 'General mechanics', 'Resolved', 17000, '5.5L 5W-30 motorolaj, olajszűrő, pollenszűrő, levegőszűrő', 50000, 'Eng. Thomas Doll', 2),
(39, 1, 36, 31, '2022-02-21', '2022-02-21', 'Télii abroncsok nyárira cserélése', 'Tyre change', 'Resolved', 17822, '-', 15000, 'Eng. Thomas Doll', 1),
(40, 1, 36, 31, '2022-03-03', '2022-03-03', 'Általános átvizsgálás', 'General mechanics', 'Resolved', 17918, '-', 15000, 'Eng. Thomas Doll', 1),
(41, 1, 36, 31, '2022-03-17', '2022-03-17', 'MOT', 'MOT', 'Resolved', 17946, '-', 22000, 'Bill Right', 1),
(42, 1, 37, 31, '2021-10-08', '2021-10-08', 'Kopott gumiabroncsok', 'Tyre change', 'Resolved', 42500, '4x Firestone Winterhawk 4', 180000, 'Joe Cocker', 1),
(43, 1, 37, 31, '2021-11-01', '2021-11-01', 'Defektes bal első gumiabroncs', 'General mechanics', 'Resolved', 42751, '1x Firestone Winterhawk 4', 45000, 'Joe Cocker', 1),
(44, 1, 37, 31, '2021-11-01', '2021-11-01', 'Az autó jobbra kanyarodáskol búgó hangot ad elől', 'General mechanics', 'Futómű átvizsgálás és elhasználódott alkatrészek cseréje', 42751, 'Futómű beállítás, bal és jobb első kerékagy csapágy', 75000, 'Eng. Thomas Doll', 2),
(45, 1, 38, 32, '2022-04-11', '2022-04-11', 'Vásárlás előtti átvizsgálás', 'General mechanics', 'Resolved', 55000, '-', 15000, 'Kurt Alfredson', 1),
(46, 1, 38, 32, '2022-04-11', '2022-04-11', 'olajcsere', 'General mechanics', 'Resolved', 55062, '4L 5W-30 motorolaj, olajszűrő, pollenszűrő, levegőszűrő', 45000, 'Kurt Alfredson', 1),
(47, 1, 38, 32, '2022-04-11', '2022-04-11', 'vezérlés és folyadékok cseréje', 'General mechanics', 'Resolved', 55062, 'Vezérlés szett, ablakmosó folyadék, fékolaj, hűtővíz', 160000, 'Kurt Alfredson', 4),
(48, 1, 38, 32, '2022-04-11', '2022-04-11', 'autómataváltóban olajcsere', 'General mechanics', 'Resolved', 55062, 'váltóolaj csere', 25000, 'Kurt Alfredson', 2),
(49, 1, 38, 32, '2022-04-11', '2022-04-11', 'Egyéb kiegészítők vásárlása', 'General mechanics', 'Resolved', 55062, 'gumiszőszeng, csomagtértálca, izzókészlet', 43750, 'Joe Cocker', 1),
(50, 1, 39, 33, '2019-07-26', '2019-07-26', 'MOT', 'MOT', 'Resolved', 197421, '-', 25000, 'Kurt Alfredson', 1),
(51, 1, 39, 33, '2019-11-15', '2019-11-15', 'Nyári abroncsok télire cserélése', 'Tyre change', 'Resolved', 200429, '-', 15000, 'Bill Right', 1),
(52, 1, 39, 33, '2020-03-10', '2020-03-10', 'Télii abroncsok nyárira cserélése', 'General mechanics', 'Resolved', 205108, '-', 15000, 'Joe Cocker', 1),
(53, 1, 39, 33, '2020-07-14', '2020-07-14', 'Időszakos olajcsere', 'General mechanics', 'Resolved', 208244, '4L 5W-30 motorolaj, olajszűrő, pollenszűrő, levegőszűrő', 40000, 'Bill Right', 2),
(54, 1, 39, 33, '2021-09-26', '2021-09-26', 'Fura, csúszó hang a motortérből', 'General mechanics', 'Vezérlés csere', 216569, 'Vezérlés szett', 120000, 'Kurt Alfredson', 2),
(55, 1, 40, 34, '2021-08-06', '2021-08-06', 'MOT', 'MOT', 'Nem felelt meg a vizsgán.', 345988, '-', 22000, 'Bill Right', 1),
(56, 1, 40, 34, '2021-08-09', '2021-08-30', 'Nagy füst jön a kipufogóbol, gyakran fogyó hűtővíz', 'General mechanics', 'Motor felújítása', 346001, 'Dugattúk és blokk felújítása, tömítések valamint szelepek és folyadékok cseréje', 568000, 'Kurt Alfredson', 30),
(57, 1, 40, 34, '2021-08-31', '2021-08-31', 'MOT', 'MOT', 'Resolved', 346001, '-', 22000, 'Joe Cocker', 1),
(58, 1, 41, 35, '2021-07-04', '2021-07-04', 'Esztétikai hibák kijavítása', 'General mechanics', 'első és hátsó lökhárítók fényezése, gépháztető cseréje, jobboldali küszöb és hátsó ajtó lakatolása és fényezése', 77619, 'Gépháztető', 290000, 'Joe Cocker', 20),
(59, 1, 41, 35, '2021-09-19', '2021-09-19', 'A pótféklámpa nem világít', 'General electronics', 'hiba keresés és meghibásodott lámpatest kicserélve', 78428, 'Pótféklámpa modul', 27000, 'Eng. Thomas Doll', 3),
(60, 1, 41, 35, '2021-12-02', '2021-12-02', 'Elöregedett nyári gumiabronyok cseréje', 'General mechanics', 'Resolved', 79711, '4x Viking 4Season', 130000, 'Eng. Thomas Doll', 1),
(61, 1, 42, 35, '2022-01-11', '2022-01-11', 'Vásárlás előtti átvizsgálás', 'General mechanics', 'Resolved', 27561, '-', 15000, 'Eng. Thomas Doll', 1),
(62, 1, 42, 35, '2022-01-13', '2022-01-13', 'A tomított fényszórók ereje gyenge', 'General electronics', 'Az tompított fényszóró izzóina cserélése, vetítési kép beállítása', 27598, '2x H7 Osram Nightbreaker emelt fényerejű izzó', 18000, 'Eng. Thomas Doll', 1),
(63, 1, 42, 35, '2022-01-13', '2022-01-13', 'Vásárlás után, az autóban található folyadékok lecserélése', 'General mechanics', 'Folyadékok lecserélése és olajcsere', 27598, 'Hűtővíz, fékolaj, hajtóműolaj, motorolaj, olajszűrő, pollenszűrő, levegőszűrő lecserélése', 68900, 'Eng. Thomas Doll', 5),
(64, 1, 42, 35, '2022-01-14', '2022-01-14', 'A hátsó kilátás növelése érdekében tolatókamera vásárlás és beszerelés', 'General electronics', 'Utólagos univerzális tolatókamera beszerelése', 27635, '1x Nagy látószögű tolatókamera', 30000, 'Bill Right', 4),
(66, 1, 43, 36, '2021-10-05', '2021-10-05', 'Elöregedett négyévszakos gumiabroncsok', 'Tyre change', 'Elöregedett gumiabroncsok lecserélése', 47026, '4x Contiental ContiWinterContact', 510000, 'Bill Right', 1),
(67, 1, 43, 36, '2022-03-30', '2022-03-30', 'Új nyári gumiabroncsok vásárlása és télikek lecserélése', 'Tyre change', 'Resolved', 54656, '4x Bridgestone Potenza Sport', 280000, 'Bill Right', 1),
(68, 1, 43, 36, '2022-04-27', '2022-04-27', 'Kavicsfelverődések a gépháztetőn', 'General mechanics', 'Planned job', 56217, '-', 50000, 'Joe Cocker', 6),
(70, 1, 44, 37, '2021-05-13', '2021-05-13', 'MOT', 'MOT', 'Resolved', 0, '-', 22000, 'Kurt Alfredson', 1),
(71, 1, 44, 37, '2021-08-19', '2021-08-19', 'Fedélzeti rendszer használata lassú', 'General electronics', 'Az elérhető szoftverfrissítések telepítése', 32991, 'Gyártó által publikált szoftvercsomag', 10000, 'Joe Cocker', 1),
(72, 1, 45, 37, '2022-02-14', '2022-02-14', 'Check engine lámpa világít', 'General mechanics', 'Hibakód olvasás, lerakódott koksz kitakarítása a motorból', 486203, 'Motortisztító folyadék', 27000, 'Bill Right', 5),
(73, 1, 45, 37, '2022-02-15', '2022-02-15', 'Check engine lámpa világít', 'General mechanics', 'Hibakód olvasás, katalizátor cserélése', 486249, 'Bontott katalizátor', 110000, 'Bill Right', 7),
(74, 1, 45, 37, '2022-02-17', '2022-02-17', 'Nehézkes váltás, erős remegés, alapjáraton zajos motor', 'General mechanics', 'Kettős tömegű lendkerék valamint kuplung alkatrészeinek cseréje', 486267, 'Kettős tömegű lendkerék, kuplung szett', 230000, 'Eng. Thomas Doll', 13),
(75, 1, 45, 37, '2022-04-29', '2022-04-29', 'Kavicsfelverődések, repedések találhatóak a szélvédőn', 'General mechanics', 'Planned job', 0, '-', 37000, 'Eng. Thomas Doll', 6),
(76, 1, 46, 38, '2022-04-01', '2022-04-01', 'A rádió recsegő hangot ad, olykor el is némul', 'General electronics', 'Rádió antennájának kicserélése', 130209, 'Rádió antenna', 29500, 'Joe Cocker', 2),
(77, 1, 46, 38, '2022-05-19', '2022-05-19', 'Zajok uthibákon való áthaladáskor', 'General mechanics', 'Planned job', 0, '-', 15000, 'Kurt Alfredson', 1),
(78, 1, 46, 38, '2022-05-20', '2022-05-20', 'MOT', 'MOT', 'Planned job', 0, '-', 22000, 'Eng. Thomas Doll', 1),
(79, 1, 47, 39, '2021-09-30', '2021-09-30', 'Az üzemanyag szintjelző rossz mennyiséget mutat', 'General mechanics', 'Lambda szonda kicserélése', 86324, 'Lambda szonda', 31650, 'Eng. Thomas Doll', 6),
(80, 1, 47, 39, '2021-10-18', '2021-10-18', 'Zörgő hang a futómű felől', 'General mechanics', 'Lengőkarok, stabilizátor rudak, szilentek cseréje', 87597, 'Lengőkarok, stabilizátor rudak és szilentek', 55000, 'Joe Cocker', 5),
(81, 1, 47, 39, '2021-10-19', '2021-10-19', 'Futómű hibáinka javtása', 'General mechanics', 'Leszakadt provédő gumiharangok lecserélése', 87609, 'provédő gumiharangok', 30000, 'Joe Cocker', 4),
(82, 1, 47, 39, '2022-02-09', '2022-02-09', 'MOT', 'MOT', 'Resolved', 88936, '-', 22000, 'Eng. Thomas Doll', 1),
(83, 1, 48, 39, '2022-03-14', '2022-03-14', 'Az autó elakad a sárban valamint nehéz terepen', 'Tyre change', 'Terep gumiabroncs ajánlása és felszerelése', 14009, '4x Goodyear UltraGrip gumiabroncs', 432000, 'Eng. Thomas Doll', 1),
(84, 1, 48, 39, '2022-03-17', '2022-03-17', 'Alcsony az autó hasmagassága', 'General mechanics', 'Hasmagasság megemelése állítható tekercsrugókkal', 14071, '4x Nissan Navara D40 +40 tekercsrugó', 480000, 'Bill Right', 10),
(85, 1, 48, 39, '2022-03-18', '2022-03-18', 'Kiegészító világítást szeretne az autó elejére valamint tetejére', 'General electronics', 'Emelt fényerejű, univerzális Led-es lámpatestek beszerelése', 14102, '4x 20db LED-es, emelt fényerejű lámpatest', 77500, 'Kurt Alfredson', 4),
(86, 1, 49, 40, '2021-08-17', '2021-08-17', 'MOT', 'MOT', 'Resolved', 175024, '-', 22000, 'Joe Cocker', 1),
(87, 1, 49, 40, '2021-10-07', '2021-10-07', 'A klíma nem hűt megfelelően', 'General mechanics', 'Elrepedt levegőcsövek kicserélése', 175257, '3x Levegőcső', 23830, 'Eng. Thomas Doll', 3),
(88, 1, 49, 40, '2021-11-03', '2021-11-03', 'Elhasználódott gumiabroncsok', 'Tyre change', 'Elhasználódott gumiabroncsok lecserélése', 175257, '4x LingLong GreenMax AllSeason négyévszakos gumiabroncs', 65000, 'Eng. Thomas Doll', 1),
(89, 1, 49, 40, '2022-02-08', '2022-02-08', 'Az autó nehezen indul', 'General mechanics', 'Elöregedett gyertyakábelek kicserélése', 175566, 'Gyújtókábel szett', 35000, 'Eng. Thomas Doll', 3),
(90, 1, 50, 41, '2021-11-04', '2021-11-04', 'AZ autó rángat indulásnál valamint menet közben is', 'General mechanics', 'Meghibásodott benzinpumpa és gyújtótrafók kicserélése', 252800, 'Benzinpumpa, 4x Bosch gyújtótrafó ', 130000, 'Bill Right', 6),
(91, 1, 50, 41, '2021-12-15', '2021-12-15', 'Fékezésre nyikorgó hangot ad az autó', 'General mechanics', 'Az első valamint hátsó fékbetétek és féktárcsák cserélése', 252946, '4x Féktárcsa, 4x fékbetét', 128500, 'Joe Cocker', 3),
(92, 1, 50, 41, '2022-01-14', '2022-01-14', 'A helyzetjelző izzók rendszeresen kiégnek', 'General electronics', 'Meghibásodott biztosíték kicserélése', 252998, '10A-es biztosíték, 2x helyzetjelző izzó', 7850, 'Kurt Alfredson', 2),
(93, 1, 50, 41, '2022-03-28', '2022-03-28', 'Kopott téli gumiabroncsok', 'General mechanics', 'Kopott téli gumiabroncsok lecserélése', 253921, '4x Hankook Ventus Prime4', 92000, 'Eng. Thomas Doll', 1),
(94, 1, 51, 42, '2022-01-25', '2022-01-25', 'MOT', 'MOT', 'Resolved', 286411, '-', 22000, 'Joe Cocker', 1),
(95, 1, 51, 42, '2022-03-23', '2022-03-23', 'Kavicsfelverődés található a szélvédőn', 'General mechanics', 'Kavicsfelverődés kijavítása', 286752, '-', 42600, 'Bill Right', 4),
(96, 1, 51, 42, '2022-04-19', '2022-04-19', 'Kopogó hang az autó hátulja felől', 'General mechanics', 'Jobb hátsó törött tekercsrugó kicserélése', 286991, 'tekrecsrugó', 40000, 'Choose...', 3),
(97, 1, 52, 43, '2022-04-04', '2022-04-04', 'A fedélzeti rendszer elavult', 'General electronics', 'Gyártó által jóváhagyott frissítések letöltése és telepítése', 6725, '-', 10000, 'Eng. Thomas Doll', 1),
(98, 1, 52, 43, '2022-04-05', '2022-04-05', 'Hátsó parkolószenzor hibás működése', 'General electronics', 'Hibás szenzor kicserélése', 6768, 'Hátsó parkolóradar szenzor', 26000, 'Joe Cocker', 2),
(99, 1, 52, 43, '2022-05-06', '2022-05-06', 'MOT', 'MOT', 'Planned job', 0, '-', 22000, 'Eng. Thomas Doll', 1),
(100, 1, 53, 44, '2022-04-20', '2022-04-20', 'Általános átvizsgálás', 'General mechanics', 'Autó átvizsgálása', 13452, '-', 15000, 'Bill Right', 1),
(101, 1, 53, 44, '2022-04-20', '2022-04-20', 'Sport gumiabroncsok vásárlása', 'Tyre change', 'Gyári abroncsok lecserélése', 13452, '4x Michelin Pilot Soprt 4 SUV', 267000, 'Joe Cocker', 1),
(102, 1, 53, 44, '2022-04-20', '2022-04-20', 'Kiegészítók vásárlása', 'General mechanics', 'Resolved', 13452, '1x Type 2 gyorstöltő kábel, 1x műanyag csomagtértálca', 55000, 'Joe Cocker', 1),
(103, 1, 54, 45, '2022-04-12', '2022-04-12', 'Nyikorgó, fémes hang fékezéskor', 'General mechanics', 'Kopott fékbetétek és tárcsák lecserélése', 63842, '4x Brembo fékbetét, 4x Brembo féktárcsa', 100000, 'Eng. Thomas Doll', 3),
(104, 1, 54, 45, '2022-04-12', '2022-04-12', 'Új nyári abroncsok vásárlása', 'Tyre change', 'Téli abroncsok lecserélése', 63842, '4x Continental ContiSportContact 4', 432000, 'Joe Cocker', 1),
(105, 1, 54, 45, '2022-05-02', '2022-05-02', 'MOT', 'MOT', 'Planned job', 0, '-', 22000, 'Joe Cocker', 1),
(106, 1, 55, 46, '2022-04-21', '2022-04-21', 'Esztétikai hibák kijavítása', 'General mechanics', 'Hátsó lökhárító lecserélése és fényezése', 87130, '1x Hátsó lökhárító', 97500, 'Joe Cocker', 4),
(107, 1, 55, 46, '2022-04-22', '2022-04-22', 'Váltóolaj időszakos cseréje', 'General mechanics', 'Váltóolaj lecserélése', 87396, 'Hajtoműolaj', 40000, 'Bill Right', 1),
(108, 1, 55, 46, '2022-05-09', '2022-05-09', 'Időszakos motorolaj és vezérléscsere', 'General mechanics', 'Planned job', 0, '-', 169500, 'Kurt Alfredson', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `userid_2` (`userid`);

--
-- Indexes for table `fleet`
--
ALTER TABLE `fleet`
  ADD PRIMARY KEY (`carId`),
  ADD KEY `fleet_ibfk_1` (`userId`);

--
-- Indexes for table `worksheet`
--
ALTER TABLE `worksheet`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `carid` (`carid`,`userid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `fleet`
--
ALTER TABLE `fleet`
  MODIFY `carId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `worksheet`
--
ALTER TABLE `worksheet`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fleet`
--
ALTER TABLE `fleet`
  ADD CONSTRAINT `fleet_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `clients` (`userid`);

--
-- Constraints for table `worksheet`
--
ALTER TABLE `worksheet`
  ADD CONSTRAINT `worksheet_ibfk_2` FOREIGN KEY (`carid`) REFERENCES `fleet` (`carId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
