-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 03. 08:46
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `carrepair`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `clients`
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
-- A tábla adatainak kiíratása `clients`
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
(26, 'Kerekes Máté', 'Budapest', 'Enikő u. 112', 'mate.kerekes@gmail.com', '+3646789971', '$2b$10$hfPZgyBeyYeycJ7UZqgYleZGzyK.VcHracKj/v7zY6EUeOW6mumhC');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fleet`
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
-- A tábla adatainak kiíratása `fleet`
--

INSERT INTO `fleet` (`carId`, `userId`, `Vendor`, `Type`, `LicensePlate`, `VIN_number`, `Fuel`, `CubicCapacity`, `Power`) VALUES
(9, 2, 'Peugeot', '307 Break', 'IMN 624', 'FR307161234NFUTU5121424535', 'Gasoline', 1596, 110),
(26, 2, 'Alfa Romeo', '156', 'JTD865', 'IT1323245JTD198V2321425356', 'Diesel', 1896, 85);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `worksheet`
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
-- A tábla adatainak kiíratása `worksheet`
--

INSERT INTO `worksheet` (`ticketid`, `Jstatus`, `carid`, `userid`, `dateStart`, `dateEnd`, `Problem`, `jobType`, `jobDone`, `mileage`, `Parts`, `TotalSum`, `mechanic`, `workhours`) VALUES
(2, 0, 9, 2, '0000-00-00', '0000-00-00', '', '', '', 0, '', 0, '0', 0),
(16, 1, 26, 2, '2022-03-28', '2022-03-28', 'Futómű balra húz', 'General mechanics', 'Futómű beállítás', 171522, '--', 25623, 'Bill Right', 2);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `userid_2` (`userid`);

--
-- A tábla indexei `fleet`
--
ALTER TABLE `fleet`
  ADD PRIMARY KEY (`carId`);

--
-- A tábla indexei `worksheet`
--
ALTER TABLE `worksheet`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `carid` (`carid`,`userid`),
  ADD KEY `userid` (`userid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `clients`
--
ALTER TABLE `clients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT a táblához `fleet`
--
ALTER TABLE `fleet`
  MODIFY `carId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT a táblához `worksheet`
--
ALTER TABLE `worksheet`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `fleet`
--
ALTER TABLE `fleet`
  ADD CONSTRAINT `fleet_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `clients` (`userid`);

--
-- Megkötések a táblához `worksheet`
--
ALTER TABLE `worksheet`
  ADD CONSTRAINT `worksheet_ibfk_2` FOREIGN KEY (`carid`) REFERENCES `fleet` (`carId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
