-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 25. 07:07
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
(24, 2, 'Peugeot ', '106', 'MAR110', 'FR106TU1FFFWF32131245', 'Gasoline', 1099, 60),
(25, 9, 'Bentley', 'bentayga', 'BOSS002', 'UK1213425TTTT1314125325', 'Gasoline', 4900, 780);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `fleet`
--
ALTER TABLE `fleet`
  ADD PRIMARY KEY (`carId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `fleet`
--
ALTER TABLE `fleet`
  MODIFY `carId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `fleet`
--
ALTER TABLE `fleet`
  ADD CONSTRAINT `fleet_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `clients` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
