-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 20. 18:56
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.1

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
  `name` text NOT NULL,
  `City` text NOT NULL,
  `ZIP` text NOT NULL,
  `Street` text NOT NULL,
  `Email` text NOT NULL,
  `Telephone` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `clients`
--

INSERT INTO `clients` (`userid`, `name`, `City`, `ZIP`, `Street`, `Email`, `Telephone`, `password`) VALUES
(1, 'Kiss Géza', 'Budapest', '1141', 'Kengyel', 'kissg@gmail.com', '+363032184567', 'kissgeza');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fleet`
--

CREATE TABLE `fleet` (
  `carId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `Vendor` text NOT NULL,
  `Type` text NOT NULL,
  `LicensePlate` text NOT NULL,
  `VIN_number` text NOT NULL,
  `Fuel` text NOT NULL,
  `CubicCapacity` int(11) NOT NULL,
  `Power` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `fleet`
--

INSERT INTO `fleet` (`carId`, `userId`, `Vendor`, `Type`, `LicensePlate`, `VIN_number`, `Fuel`, `CubicCapacity`, `Power`) VALUES
(2, 1, 'Audi', 'A3 Sportback', 'FJO-384', '1HGBH41JXMN109186', 'benzin', 45, 110);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `worksheet`
--

CREATE TABLE `worksheet` (
  `ticketid` int(11) NOT NULL,
  `carid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateStart` date NOT NULL,
  `dateEnd` date NOT NULL,
  `Problem` text NOT NULL,
  `jobType` text NOT NULL,
  `jobDone` text NOT NULL,
  `mileage` int(11) NOT NULL,
  `Parts` text NOT NULL,
  `TotalSum` int(11) NOT NULL,
  `mechanic` int(11) NOT NULL,
  `workhours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `worksheet`
--

INSERT INTO `worksheet` (`ticketid`, `carid`, `userid`, `dateStart`, `dateEnd`, `Problem`, `jobType`, `jobDone`, `mileage`, `Parts`, `TotalSum`, `mechanic`, `workhours`) VALUES
(1, 2, 1, '2022-02-20', '2022-02-20', 'olajcsere', 'önköltséges', 'igen', 112678, 'olaj 5-30\r\nolajszűrő\r\nlevegőszűrő\r\npollenszűrő', 40000, 1, 1);

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
  ADD PRIMARY KEY (`carId`),
  ADD UNIQUE KEY `userId` (`userId`),
  ADD UNIQUE KEY `VIN_number` (`VIN_number`) USING HASH;

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
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `fleet`
--
ALTER TABLE `fleet`
  MODIFY `carId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `worksheet`
--
ALTER TABLE `worksheet`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `worksheet_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `clients` (`userid`),
  ADD CONSTRAINT `worksheet_ibfk_2` FOREIGN KEY (`carid`) REFERENCES `fleet` (`carId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
