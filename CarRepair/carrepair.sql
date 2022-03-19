-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 06. 11:25
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
  `name` text NOT NULL,
  `City` text NOT NULL,
  `Street` text NOT NULL,
  `Email` text NOT NULL,
  `Telephone` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `clients`
--

INSERT INTO `clients` (`userid`, `name`, `City`, `Street`, `Email`, `Telephone`, `password`) VALUES
(1, 'Kiss Géza', 'Budapest', 'Kengyel', 'kissg@gmail.com', '+363032184567', 'kissgeza'),
(2, 'Norbert Hollander', 'Érd', 'Porcsinrózsa u. ', 'norbert.hollander@gmail.com', 'telephone', '$2b$10$UD45bk.kJt5wz2VYcScIuupgCUZUDCvX.V3wZRseTF1UIRgESyvwm'),
(3, 'Hollander Hetti', 'Üröm', 'Csókavár u. 52', 'hetti.hollander@youtubekids.com', '06202238987', '$2b$10$BuJ8rEXXLtBuArBylpTc9OqtGmGUEVYjQRaJnt9XwasL7Rf12lwLC'),
(4, 'Kresz Géza', 'Budapest', 'Kresz Géza u. 85', 'info@brfk.hu', '112', '$2b$10$tqMGpgVPR689h9FyE4o3..HKtb0iZINSgJCqMJGFoerQ1YhEwem7.'),
(5, 'Tűzoltó Sam', 'Körmöspálcás', 'Tűz u.1', 'sam@kormostuzolto.hu', '114', '$2b$10$cclbDCQH9cPpTnxiJRu1HuAKt1cgz6TqBzPlXFmXSKE30.2EgGZCu'),
(6, 'Hamberger Péter', 'Érd', 'Orgona u. 1', 'hamberger.peter@freemail.hu', '0628356588', '$2b$10$acfVsaIBX/4A/0fSNU1ajegnXtAAWjsA9bSVDsQSJN0FxPWm2xxsO');

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
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `clients`
--
ALTER TABLE `clients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;