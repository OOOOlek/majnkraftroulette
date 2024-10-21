-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 21, 2024 at 11:12 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `majnkraftroulette`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `profil`
--

CREATE TABLE `profil` (
  `ID_Profilu` int(11) NOT NULL,
  `ID_Uzytkownika` int(11) DEFAULT NULL,
  `Nazwa_uzytkownika` varchar(255) NOT NULL,
  `Haslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`ID_Profilu`, `ID_Uzytkownika`, `Nazwa_uzytkownika`, `Haslo`) VALUES
(1, 1, 'profil1', 'haslo1'),
(2, 2, 'profil2', 'haslo2'),
(3, 3, 'profil3', 'haslo3'),
(4, 4, 'profil4', 'haslo4'),
(5, 5, 'profil5', 'haslo5'),
(6, 6, 'profil6', 'haslo6'),
(7, 7, 'profil7', 'haslo7'),
(8, 8, 'profil8', 'haslo8'),
(9, 9, 'profil9', 'haslo9'),
(10, 10, 'profil10', 'haslo10'),
(11, 11, 'profil11', 'haslo11'),
(12, 12, 'profil12', 'haslo12'),
(13, 13, 'profil13', 'haslo13'),
(14, 14, 'profil14', 'haslo14'),
(15, 15, 'profil15', 'haslo15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ranking`
--

CREATE TABLE `ranking` (
  `ID_Rankingu` int(11) NOT NULL,
  `ID_Profilu` int(11) DEFAULT NULL,
  `Nazwa_uzytkownika` varchar(255) DEFAULT NULL,
  `Liczba_pkt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`ID_Rankingu`, `ID_Profilu`, `Nazwa_uzytkownika`, `Liczba_pkt`) VALUES
(1, 1, 'profil1', 100),
(2, 2, 'profil2', 85),
(3, 3, 'profil3', 120),
(4, 4, 'profil4', 65),
(5, 5, 'profil5', 110),
(6, 6, 'profil6', 125),
(7, 7, 'profil7', 95),
(8, 8, 'profil8', 80),
(9, 9, 'profil9', 105),
(10, 10, 'profil10', 115),
(11, 11, 'profil11', 130),
(12, 12, 'profil12', 100),
(13, 13, 'profil13', 85),
(14, 14, 'profil14', 120),
(15, 15, 'profil15', 65);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rejestracja`
--

CREATE TABLE `rejestracja` (
  `ID_rejestracji` int(11) NOT NULL,
  `Nazwa_uzytkownika` varchar(255) NOT NULL,
  `Haslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rejestracja`
--

INSERT INTO `rejestracja` (`ID_rejestracji`, `Nazwa_uzytkownika`, `Haslo`) VALUES
(1, 'uzytkownik1', 'haslo1'),
(2, 'uzytkownik2', 'haslo2'),
(3, 'uzytkownik3', 'haslo3'),
(4, 'uzytkownik4', 'haslo4'),
(5, 'uzytkownik5', 'haslo5'),
(6, 'uzytkownik6', 'haslo6'),
(7, 'uzytkownik7', 'haslo7'),
(8, 'uzytkownik8', 'haslo8'),
(9, 'uzytkownik9', 'haslo9'),
(10, 'uzytkownik10', 'haslo10'),
(11, 'uzytkownik11', 'haslo11'),
(12, 'uzytkownik12', 'haslo12'),
(13, 'uzytkownik13', 'haslo13'),
(14, 'uzytkownik14', 'haslo14'),
(15, 'uzytkownik15', 'haslo15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ruletka`
--

CREATE TABLE `ruletka` (
  `ID` int(11) NOT NULL,
  `ID_uzytkownika` int(11) DEFAULT NULL,
  `ID_Profilu` int(11) DEFAULT NULL,
  `ID_Rankingu` int(11) DEFAULT NULL,
  `ID_Rejestracji` int(11) DEFAULT NULL,
  `ID_Statystyki` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruletka`
--

INSERT INTO `ruletka` (`ID`, `ID_uzytkownika`, `ID_Profilu`, `ID_Rankingu`, `ID_Rejestracji`, `ID_Statystyki`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2),
(3, 3, 3, 3, 3, 3),
(4, 4, 4, 4, 4, 4),
(5, 5, 5, 5, 5, 5),
(6, 6, 6, 6, 6, 6),
(7, 7, 7, 7, 7, 7),
(8, 8, 8, 8, 8, 8),
(9, 9, 9, 9, 9, 9),
(10, 10, 10, 10, 10, 10),
(11, 11, 11, 11, 11, 11),
(12, 12, 12, 12, 12, 12),
(13, 13, 13, 13, 13, 13),
(14, 14, 14, 14, 14, 14),
(15, 15, 15, 15, 15, 15);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `statystyki`
--

CREATE TABLE `statystyki` (
  `ID_Statystyki` int(11) NOT NULL,
  `ID_Profilu` int(11) DEFAULT NULL,
  `Nazwa_uzytkownika` varchar(255) DEFAULT NULL,
  `Liczba_wygranych` int(11) DEFAULT NULL,
  `Liczba_przegranych` int(11) DEFAULT NULL,
  `Liczba_pkt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statystyki`
--

INSERT INTO `statystyki` (`ID_Statystyki`, `ID_Profilu`, `Nazwa_uzytkownika`, `Liczba_wygranych`, `Liczba_przegranych`, `Liczba_pkt`) VALUES
(1, 1, 'profil1', 10, 5, 100),
(2, 2, 'profil2', 8, 7, 85),
(3, 3, 'profil3', 15, 2, 120),
(4, 4, 'profil4', 6, 9, 65),
(5, 5, 'profil5', 12, 4, 110),
(6, 6, 'profil6', 14, 3, 125),
(7, 7, 'profil7', 9, 6, 95),
(8, 8, 'profil8', 7, 8, 80),
(9, 9, 'profil9', 11, 5, 105),
(10, 10, 'profil10', 13, 4, 115),
(11, 11, 'profil11', 16, 1, 130),
(12, 12, 'profil12', 10, 5, 100),
(13, 13, 'profil13', 8, 7, 85),
(14, 14, 'profil14', 15, 2, 120),
(15, 15, 'profil15', 6, 9, 65);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `ID_uzytkownika` int(11) NOT NULL,
  `Nazwa_uzytkownika` varchar(255) NOT NULL,
  `Haslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`ID_uzytkownika`, `Nazwa_uzytkownika`, `Haslo`) VALUES
(1, 'uzytkownik1', 'haslo1'),
(2, 'uzytkownik2', 'haslo2'),
(3, 'uzytkownik3', 'haslo3'),
(4, 'uzytkownik4', 'haslo4'),
(5, 'uzytkownik5', 'haslo5'),
(6, 'uzytkownik6', 'haslo6'),
(7, 'uzytkownik7', 'haslo7'),
(8, 'uzytkownik8', 'haslo8'),
(9, 'uzytkownik9', 'haslo9'),
(10, 'uzytkownik10', 'haslo10'),
(11, 'uzytkownik11', 'haslo11'),
(12, 'uzytkownik12', 'haslo12'),
(13, 'uzytkownik13', 'haslo13'),
(14, 'uzytkownik14', 'haslo14'),
(15, 'uzytkownik15', 'haslo15');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`ID_Profilu`),
  ADD KEY `ID_Uzytkownika` (`ID_Uzytkownika`);

--
-- Indeksy dla tabeli `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`ID_Rankingu`),
  ADD KEY `ID_Profilu` (`ID_Profilu`);

--
-- Indeksy dla tabeli `rejestracja`
--
ALTER TABLE `rejestracja`
  ADD PRIMARY KEY (`ID_rejestracji`);

--
-- Indeksy dla tabeli `ruletka`
--
ALTER TABLE `ruletka`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_uzytkownika` (`ID_uzytkownika`),
  ADD KEY `ID_Profilu` (`ID_Profilu`),
  ADD KEY `ID_Rankingu` (`ID_Rankingu`),
  ADD KEY `ID_Rejestracji` (`ID_Rejestracji`),
  ADD KEY `ID_Statystyki` (`ID_Statystyki`);

--
-- Indeksy dla tabeli `statystyki`
--
ALTER TABLE `statystyki`
  ADD PRIMARY KEY (`ID_Statystyki`),
  ADD KEY `ID_Profilu` (`ID_Profilu`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`ID_uzytkownika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `ID_Profilu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `ID_Rankingu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rejestracja`
--
ALTER TABLE `rejestracja`
  MODIFY `ID_rejestracji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ruletka`
--
ALTER TABLE `ruletka`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `statystyki`
--
ALTER TABLE `statystyki`
  MODIFY `ID_Statystyki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `ID_uzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`ID_Uzytkownika`) REFERENCES `uzytkownicy` (`ID_uzytkownika`);

--
-- Constraints for table `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`ID_Profilu`) REFERENCES `profil` (`ID_Profilu`);

--
-- Constraints for table `ruletka`
--
ALTER TABLE `ruletka`
  ADD CONSTRAINT `ruletka_ibfk_1` FOREIGN KEY (`ID_uzytkownika`) REFERENCES `uzytkownicy` (`ID_uzytkownika`),
  ADD CONSTRAINT `ruletka_ibfk_2` FOREIGN KEY (`ID_Profilu`) REFERENCES `profil` (`ID_Profilu`),
  ADD CONSTRAINT `ruletka_ibfk_3` FOREIGN KEY (`ID_Rankingu`) REFERENCES `ranking` (`ID_Rankingu`),
  ADD CONSTRAINT `ruletka_ibfk_4` FOREIGN KEY (`ID_Rejestracji`) REFERENCES `rejestracja` (`ID_Rejestracji`),
  ADD CONSTRAINT `ruletka_ibfk_5` FOREIGN KEY (`ID_Statystyki`) REFERENCES `statystyki` (`ID_Statystyki`);

--
-- Constraints for table `statystyki`
--
ALTER TABLE `statystyki`
  ADD CONSTRAINT `statystyki_ibfk_1` FOREIGN KEY (`ID_Profilu`) REFERENCES `profil` (`ID_Profilu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
