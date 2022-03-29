-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 29. 14:23
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
(14, 'Ken Rock', 'Los Angeles', 'Broken Dreams Boulvard 1', 'kenrock@monster.com', '+123456789', '$2b$10$5aUw2InBvDHiXsPJ28OXp.NdjnBKRqqbpesvvO3.tc.NPwDkEvnbu');

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
(2, 1, 'Audi', 'A3 Sportback', 'FJO-384', '1HGBH41JXMN109186', 'gas', 1789, 110),
(8, 14, 'Audi', 'S8', 'MIR-002', 'WVFT00021212FEG1134', 'gasoline', 4188, 399),
(9, 2, 'Peugeot', '307 Break', 'IMN 624', 'FR307161234NFUTU5121424535', 'Gasoline', 1596, 110),
(23, 2, 'Skoda', 'Octavia', 'PYU632', 'CZ1111TFSI46546782', 'gasoline', 1374, 150),
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
(15, 0, 23, 2, '0000-00-00', '0000-00-00', '', '', '', 0, '', 0, '0', 0),
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
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT a táblához `fleet`
--
ALTER TABLE `fleet`
  MODIFY `carId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT a táblához `worksheet`
--
ALTER TABLE `worksheet`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
