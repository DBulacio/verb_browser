-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-06-2022 a las 20:06:23
-- Versión del servidor: 10.3.30-MariaDB
-- Versión de PHP: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `verb_searcher`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verbs`
--

CREATE TABLE `verbs` (
  `id` int(11) NOT NULL,
  `infinitive` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `preterite` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `participle` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `verbs`
--

INSERT INTO `verbs` (`id`, `infinitive`, `preterite`, `participle`) VALUES
(18, 'catch', 'caught', 'caught'),
(19, 'choose', 'chose', 'chosen'),
(5, 'arise', 'arose', 'arisen'),
(6, 'be', 'was-were', 'been'),
(7, 'beat', 'beat', 'beaten'),
(8, 'become', 'became', 'become'),
(9, 'begin', 'began', 'begun'),
(10, 'bet', 'bet', 'bet'),
(11, 'bite', 'bit', 'bitten'),
(12, 'bleed', 'bled', 'bled'),
(13, 'blow', 'blew', 'blown'),
(14, 'break', 'broke', 'broken'),
(15, 'bring', 'brought', 'brought'),
(16, 'build', 'built', 'built'),
(17, 'buy', 'bought', 'bought'),
(20, 'come', 'came', 'come'),
(21, 'cost', 'cost', 'cost'),
(22, 'creep', 'crept', 'crept'),
(23, 'cut', 'cut', 'cut'),
(24, 'deal', 'dealt', 'dealt'),
(25, 'do', 'did', 'done'),
(26, 'draw', 'drew', 'drawn'),
(27, 'dream', 'dreamed-dreamt', 'dreamed-dreamt'),
(28, 'drink', 'drank', 'drunk'),
(29, 'drive', 'drove', 'driven'),
(30, 'eat', 'ate', 'eaten'),
(31, 'fall', 'fell', 'fallen'),
(32, 'feed', 'fed', 'fed'),
(33, 'feel', 'felt', 'felt'),
(34, 'fight', 'fought', 'fought'),
(35, 'find', 'found', 'found'),
(36, 'flee', 'fled', 'fled'),
(37, 'fly', 'flew', 'flown'),
(38, 'forget', 'forgot', 'forgotten'),
(39, 'forgive', 'forgave', 'forgiven'),
(40, 'forsake', 'forsook', 'forsaken'),
(41, 'freeze', 'froze', 'frozen'),
(42, 'get', 'got', 'got'),
(43, 'give', 'gave', 'given'),
(44, 'go', 'went', 'gone'),
(45, 'grind', 'ground', 'ground'),
(46, 'grow', 'grew', 'grown'),
(47, 'hang', 'hung', 'hung'),
(48, 'have', 'had', 'had'),
(49, 'hear', 'heard', 'heard'),
(50, 'hide', 'hid', 'hidden'),
(51, 'hit', 'hit', 'hit'),
(52, 'hold', 'held', 'held'),
(53, 'hurt', 'hurt', 'hurt'),
(54, 'keep', 'kept', 'kept'),
(55, 'kneel', 'knelt', 'knelt'),
(56, 'know', 'knew', 'known'),
(57, 'lead', 'led', 'led'),
(58, 'learn', 'learned-learnt', 'learned-learnt'),
(59, 'leave', 'left', 'left'),
(60, 'lend', 'lent', 'lent'),
(61, 'let', 'let', 'let'),
(62, 'lie', 'lay', 'lain'),
(63, 'lose', 'lost', 'lost'),
(64, 'make', 'made', 'made'),
(65, 'mean', 'meant', 'meant'),
(66, 'meet', 'met', 'met'),
(67, 'pay', 'paid', 'paid'),
(68, 'put', 'put', 'put'),
(69, 'quit', 'quit', 'quit'),
(70, 'read', 'read', 'read'),
(71, 'ride', 'rode', 'ridden'),
(72, 'ring', 'rang', 'rung'),
(73, 'rise', 'rose', 'risen'),
(74, 'run', 'ran', 'run'),
(75, 'say', 'said', 'said'),
(76, 'see', 'saw', 'seen'),
(77, 'sell', 'sold', 'sold'),
(78, 'send', 'sent', 'sent'),
(79, 'set', 'set', 'set'),
(80, 'sew', 'sewed', 'sewn'),
(81, 'shake', 'shook', 'shaken'),
(82, 'shine', 'shone', 'shone'),
(83, 'shoot', 'shot', 'shot'),
(84, 'show', 'showed', 'shown'),
(85, 'shrink', 'shrank', 'shrunk'),
(86, 'shut', 'shut', 'shut'),
(87, 'sing', 'sang', 'sung'),
(88, 'sink', 'sank', 'sunk'),
(89, 'sit', 'sat', 'sat'),
(90, 'sleep', 'slept', 'slept'),
(91, 'slide', 'slid', 'slid'),
(92, 'sow', 'sowed', 'sown'),
(93, 'speak', 'spoke', 'spoken'),
(94, 'spell', 'spelt', 'spelt'),
(95, 'spend', 'spent', 'spent'),
(96, 'spill', 'spilt', 'spilt'),
(97, 'split', 'split', 'split'),
(98, 'spoil', 'spoilt', 'spoilt'),
(99, 'spread', 'spread', 'spread'),
(100, 'stand', 'stood', 'stood'),
(101, 'steal', 'stole', 'stolen'),
(102, 'sting', 'stung', 'stung'),
(103, 'stink', 'stank', 'stunk'),
(104, 'strike', 'struck', 'struck'),
(105, 'swear', 'swore', 'sworn'),
(106, 'sweep', 'swept', 'swept'),
(107, 'swim', 'swam', 'swum'),
(108, 'take', 'took', 'taken'),
(109, 'teach', 'taught', 'taught'),
(110, 'tear', 'tore', 'torn'),
(111, 'tell', 'told', 'told'),
(112, 'think', 'thought', 'thought'),
(113, 'throw', 'threw', 'thrown'),
(114, 'tread', 'trode', 'trodden'),
(115, 'understand', 'understood', 'understood'),
(116, 'wake', 'woke', 'woken'),
(117, 'wear', 'wore', 'worn'),
(118, 'weave', 'wove', 'woven'),
(119, 'weep', 'wept', 'wept'),
(120, 'win', 'won', 'won'),
(121, 'wring', 'wrung', 'wrung'),
(122, 'write', 'wrote', 'written');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `verbs`
--
ALTER TABLE `verbs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `verbs`
--
ALTER TABLE `verbs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
