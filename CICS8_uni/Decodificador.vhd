library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;


entity Decoder is
    Port ( I_DEC : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_DEC : out  STD_LOGIC_VECTOR (5 downto 0);
           N_DEC : out  STD_LOGIC_VECTOR (2 downto 0);
           S_DEC : out  STD_LOGIC_VECTOR (3 downto 0);
           ACC_DEC : out  STD_LOGIC);
end Decoder;

architecture Behavioral of Decoder is

	begin
---------------------------------------------------------------------------------------------------------------------------------
	OPDEC:process(I_DEC)--Proceso correspondiente al OPDEC
	--Asigna el valor correspondiente segun sea el valor de I_DEC de sus 256 posibilidades.
	--Cada valor del OP_DEC corresponde al OP interno de la tabla
	--Cada valor de I_DEC corresponde al codigo de operación + el codigo extendido.
	--A diferencia de los demas procesos que estan en loop este se hizo 1 por 1 porque no me salia.
	begin
	if I_DEC = std_logic_vector(to_unsigned(0, 8)) then
		OP_DEC <= "000000";
	elsif I_DEC = std_logic_vector(to_unsigned(1, 8)) then
		OP_DEC <= "000000";
	elsif I_DEC = std_logic_vector(to_unsigned(2, 8)) then
		OP_DEC <= "000001";
	elsif I_DEC = std_logic_vector(to_unsigned(3, 8)) then
		OP_DEC <= "000001";
	elsif I_DEC = std_logic_vector(to_unsigned(4, 8)) then
		OP_DEC <= "000010";
	elsif I_DEC = std_logic_vector(to_unsigned(5, 8)) then
		OP_DEC <= "000010";
	elsif I_DEC = std_logic_vector(to_unsigned(6, 8)) then
		OP_DEC <= "000011";
	elsif I_DEC = std_logic_vector(to_unsigned(7, 8)) then
		OP_DEC <= "000011";
	elsif I_DEC = std_logic_vector(to_unsigned(8, 8)) then
		OP_DEC <= "000100";
	elsif I_DEC = std_logic_vector(to_unsigned(9, 8)) then
		OP_DEC <= "000100";
	elsif I_DEC = std_logic_vector(to_unsigned(10, 8)) then
		OP_DEC <= "000101";
	elsif I_DEC = std_logic_vector(to_unsigned(11, 8)) then
		OP_DEC <= "000101";
	elsif I_DEC = std_logic_vector(to_unsigned(12, 8)) then
		OP_DEC <= "000110";
	elsif I_DEC = std_logic_vector(to_unsigned(13, 8)) then
		OP_DEC <= "000110";
	elsif I_DEC = std_logic_vector(to_unsigned(14, 8)) then
		OP_DEC <= "000111";
	elsif I_DEC = std_logic_vector(to_unsigned(15, 8)) then
		OP_DEC <= "000111";
	elsif I_DEC = std_logic_vector(to_unsigned(16, 8)) then
		OP_DEC <= "001000";
	elsif I_DEC = std_logic_vector(to_unsigned(17, 8)) then
		OP_DEC <= "001001";
	elsif I_DEC = std_logic_vector(to_unsigned(18, 8)) then
		OP_DEC <= "001000";
	elsif I_DEC = std_logic_vector(to_unsigned(19, 8)) then
		OP_DEC <= "001001";
	elsif I_DEC = std_logic_vector(to_unsigned(20, 8)) then
		OP_DEC <= "001000";
	elsif I_DEC = std_logic_vector(to_unsigned(21, 8)) then
		OP_DEC <= "001001";
	elsif I_DEC = std_logic_vector(to_unsigned(22, 8)) then
		OP_DEC <= "001000";
	elsif I_DEC = std_logic_vector(to_unsigned(23, 8)) then
		OP_DEC <= "001001";
	elsif I_DEC = std_logic_vector(to_unsigned(24, 8)) then
		OP_DEC <= "001000";
	elsif I_DEC = std_logic_vector(to_unsigned(25, 8)) then
		OP_DEC <= "001001";
	elsif I_DEC = std_logic_vector(to_unsigned(26, 8)) then
		OP_DEC <= "001000";
	elsif I_DEC = std_logic_vector(to_unsigned(27, 8)) then
		OP_DEC <= "001001";
	elsif I_DEC = std_logic_vector(to_unsigned(28, 8)) then
		OP_DEC <= "001000";
	elsif I_DEC = std_logic_vector(to_unsigned(29, 8)) then
		OP_DEC <= "001001";
	elsif I_DEC = std_logic_vector(to_unsigned(30, 8)) then
		OP_DEC <= "001000";
	elsif I_DEC = std_logic_vector(to_unsigned(31, 8)) then
		OP_DEC <= "001001";
	elsif I_DEC = std_logic_vector(to_unsigned(32, 8)) then
		OP_DEC <= "001010";
	elsif I_DEC = std_logic_vector(to_unsigned(33, 8)) then
		OP_DEC <= "001011";
	elsif I_DEC = std_logic_vector(to_unsigned(34, 8)) then
		OP_DEC <= "001010";
	elsif I_DEC = std_logic_vector(to_unsigned(35, 8)) then
		OP_DEC <= "001011";
	elsif I_DEC = std_logic_vector(to_unsigned(36, 8)) then
		OP_DEC <= "001010";
	elsif I_DEC = std_logic_vector(to_unsigned(37, 8)) then
		OP_DEC <= "001011";
	elsif I_DEC = std_logic_vector(to_unsigned(38, 8)) then
		OP_DEC <= "001010";
	elsif I_DEC = std_logic_vector(to_unsigned(39, 8)) then
		OP_DEC <= "001011";
	elsif I_DEC = std_logic_vector(to_unsigned(40, 8)) then
		OP_DEC <= "001010";
	elsif I_DEC = std_logic_vector(to_unsigned(41, 8)) then
		OP_DEC <= "001011";
	elsif I_DEC = std_logic_vector(to_unsigned(42, 8)) then
		OP_DEC <= "001010";
	elsif I_DEC = std_logic_vector(to_unsigned(43, 8)) then
		OP_DEC <= "001011";
	elsif I_DEC = std_logic_vector(to_unsigned(44, 8)) then
		OP_DEC <= "001010";
	elsif I_DEC = std_logic_vector(to_unsigned(45, 8)) then
		OP_DEC <= "001011";
	elsif I_DEC = std_logic_vector(to_unsigned(46, 8)) then
		OP_DEC <= "001010";
	elsif I_DEC = std_logic_vector(to_unsigned(47, 8)) then
		OP_DEC <= "001011";
	elsif I_DEC = std_logic_vector(to_unsigned(48, 8)) then
		OP_DEC <= "001100";
	elsif I_DEC = std_logic_vector(to_unsigned(49, 8)) then
		OP_DEC <= "001101";
	elsif I_DEC = std_logic_vector(to_unsigned(50, 8)) then
		OP_DEC <= "001100";
	elsif I_DEC = std_logic_vector(to_unsigned(51, 8)) then
		OP_DEC <= "001101";
	elsif I_DEC = std_logic_vector(to_unsigned(52, 8)) then
		OP_DEC <= "001100";
	elsif I_DEC = std_logic_vector(to_unsigned(53, 8)) then
		OP_DEC <= "001101";
	elsif I_DEC = std_logic_vector(to_unsigned(54, 8)) then
		OP_DEC <= "001100";
	elsif I_DEC = std_logic_vector(to_unsigned(55, 8)) then
		OP_DEC <= "001101";
	elsif I_DEC = std_logic_vector(to_unsigned(56, 8)) then
		OP_DEC <= "001100";
	elsif I_DEC = std_logic_vector(to_unsigned(57, 8)) then
		OP_DEC <= "001101";
	elsif I_DEC = std_logic_vector(to_unsigned(58, 8)) then
		OP_DEC <= "001100";
	elsif I_DEC = std_logic_vector(to_unsigned(59, 8)) then
		OP_DEC <= "001101";
	elsif I_DEC = std_logic_vector(to_unsigned(60, 8)) then
		OP_DEC <= "001100";
	elsif I_DEC = std_logic_vector(to_unsigned(61, 8)) then
		OP_DEC <= "001101";
	elsif I_DEC = std_logic_vector(to_unsigned(62, 8)) then
		OP_DEC <= "001100";
	elsif I_DEC = std_logic_vector(to_unsigned(63, 8)) then
		OP_DEC <= "001101";
	elsif I_DEC = std_logic_vector(to_unsigned(64, 8)) then
		OP_DEC <= "001110";
	elsif I_DEC = std_logic_vector(to_unsigned(65, 8)) then
		OP_DEC <= "001111";
	elsif I_DEC = std_logic_vector(to_unsigned(66, 8)) then
		OP_DEC <= "001110";
	elsif I_DEC = std_logic_vector(to_unsigned(67, 8)) then
		OP_DEC <= "001111";
	elsif I_DEC = std_logic_vector(to_unsigned(68, 8)) then
		OP_DEC <= "001110";
	elsif I_DEC = std_logic_vector(to_unsigned(69, 8)) then
		OP_DEC <= "001111";
	elsif I_DEC = std_logic_vector(to_unsigned(70, 8)) then
		OP_DEC <= "001110";
	elsif I_DEC = std_logic_vector(to_unsigned(71, 8)) then
		OP_DEC <= "001111";
	elsif I_DEC = std_logic_vector(to_unsigned(72, 8)) then
		OP_DEC <= "010000";
	elsif I_DEC = std_logic_vector(to_unsigned(73, 8)) then
		OP_DEC <= "010001";
	elsif I_DEC = std_logic_vector(to_unsigned(74, 8)) then
		OP_DEC <= "010000";
	elsif I_DEC = std_logic_vector(to_unsigned(75, 8)) then
		OP_DEC <= "010001";
	elsif I_DEC = std_logic_vector(to_unsigned(76, 8)) then
		OP_DEC <= "010000";
	elsif I_DEC = std_logic_vector(to_unsigned(77, 8)) then
		OP_DEC <= "010001";
	elsif I_DEC = std_logic_vector(to_unsigned(78, 8)) then
		OP_DEC <= "010000";
	elsif I_DEC = std_logic_vector(to_unsigned(79, 8)) then
		OP_DEC <= "010001";
	elsif I_DEC = std_logic_vector(to_unsigned(80, 8)) then
		OP_DEC <= "010010";
	elsif I_DEC = std_logic_vector(to_unsigned(81, 8)) then
		OP_DEC <= "010011";
	elsif I_DEC = std_logic_vector(to_unsigned(82, 8)) then
		OP_DEC <= "010010";
	elsif I_DEC = std_logic_vector(to_unsigned(83, 8)) then
		OP_DEC <= "010011";
	elsif I_DEC = std_logic_vector(to_unsigned(84, 8)) then
		OP_DEC <= "010010";
	elsif I_DEC = std_logic_vector(to_unsigned(85, 8)) then
		OP_DEC <= "010011";
	elsif I_DEC = std_logic_vector(to_unsigned(86, 8)) then
		OP_DEC <= "010010";
	elsif I_DEC = std_logic_vector(to_unsigned(87, 8)) then
		OP_DEC <= "010011";
	elsif I_DEC = std_logic_vector(to_unsigned(88, 8)) then
		OP_DEC <= "010100";
	elsif I_DEC = std_logic_vector(to_unsigned(89, 8)) then
		OP_DEC <= "010101";
	elsif I_DEC = std_logic_vector(to_unsigned(90, 8)) then
		OP_DEC <= "010100";
	elsif I_DEC = std_logic_vector(to_unsigned(91, 8)) then
		OP_DEC <= "010101";
	elsif I_DEC = std_logic_vector(to_unsigned(92, 8)) then
		OP_DEC <= "010100";
	elsif I_DEC = std_logic_vector(to_unsigned(93, 8)) then
		OP_DEC <= "010101";
	elsif I_DEC = std_logic_vector(to_unsigned(94, 8)) then
		OP_DEC <= "010100";
	elsif I_DEC = std_logic_vector(to_unsigned(95, 8)) then
		OP_DEC <= "010101";
	elsif I_DEC = std_logic_vector(to_unsigned(96, 8)) then
		OP_DEC <= "010110";
	elsif I_DEC = std_logic_vector(to_unsigned(97, 8)) then
		OP_DEC <= "010111";
	elsif I_DEC = std_logic_vector(to_unsigned(98, 8)) then
		OP_DEC <= "011000";
	elsif I_DEC = std_logic_vector(to_unsigned(99, 8)) then
		OP_DEC <= "011001";
	elsif I_DEC = std_logic_vector(to_unsigned(100, 8)) then
		OP_DEC <= "011010";
	elsif I_DEC = std_logic_vector(to_unsigned(101, 8)) then
		OP_DEC <= "011011";
	elsif I_DEC = std_logic_vector(to_unsigned(102, 8)) then
		OP_DEC <= "011100";
	elsif I_DEC = std_logic_vector(to_unsigned(103, 8)) then
		OP_DEC <= "011101";
	elsif I_DEC = std_logic_vector(to_unsigned(104, 8)) then
		OP_DEC <= "011110";
	elsif I_DEC = std_logic_vector(to_unsigned(105, 8)) then
		OP_DEC <= "011111";
	elsif I_DEC = std_logic_vector(to_unsigned(106, 8)) then
		OP_DEC <= "100000";
	elsif I_DEC = std_logic_vector(to_unsigned(107, 8)) then
		OP_DEC <= "100001";
	elsif I_DEC = std_logic_vector(to_unsigned(108, 8)) then
		OP_DEC <= "100010";
	elsif I_DEC = std_logic_vector(to_unsigned(109, 8)) then
		OP_DEC <= "100011";
	elsif I_DEC = std_logic_vector(to_unsigned(110, 8)) then
		OP_DEC <= "100100";
	elsif I_DEC = std_logic_vector(to_unsigned(111, 8)) then
		OP_DEC <= "100101";
	elsif I_DEC = std_logic_vector(to_unsigned(112, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(113, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(114, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(115, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(116, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(117, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(118, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(119, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(120, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(121, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(122, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(123, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(124, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(125, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(126, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(127, 8)) then
		OP_DEC <= "100110";
	elsif I_DEC = std_logic_vector(to_unsigned(128, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(129, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(130, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(131, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(132, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(133, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(134, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(135, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(136, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(137, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(138, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(139, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(140, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(141, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(142, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(143, 8)) then
		OP_DEC <= "100111";
	elsif I_DEC = std_logic_vector(to_unsigned(144, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(145, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(146, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(147, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(148, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(149, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(150, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(151, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(152, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(153, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(154, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(155, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(156, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(157, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(158, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(159, 8)) then
		OP_DEC <= "101000";
	elsif I_DEC = std_logic_vector(to_unsigned(160, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(161, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(162, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(163, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(164, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(165, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(166, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(167, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(168, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(169, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(170, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(171, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(172, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(173, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(174, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(175, 8)) then
		OP_DEC <= "101001";
	elsif I_DEC = std_logic_vector(to_unsigned(176, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(177, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(178, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(179, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(180, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(181, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(182, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(183, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(184, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(185, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(186, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(187, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(188, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(189, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(190, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(191, 8)) then
		OP_DEC <= "101010";
	elsif I_DEC = std_logic_vector(to_unsigned(192, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(193, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(194, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(195, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(196, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(197, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(198, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(199, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(200, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(201, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(202, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(203, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(204, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(205, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(206, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(207, 8)) then
		OP_DEC <= "101011";
	elsif I_DEC = std_logic_vector(to_unsigned(208, 8)) then
		OP_DEC <= "101100";
	elsif I_DEC = std_logic_vector(to_unsigned(209, 8)) then
		OP_DEC <= "101101";
	elsif I_DEC = std_logic_vector(to_unsigned(210, 8)) then
		OP_DEC <= "101100";
	elsif I_DEC = std_logic_vector(to_unsigned(211, 8)) then
		OP_DEC <= "101101";
	elsif I_DEC = std_logic_vector(to_unsigned(212, 8)) then
		OP_DEC <= "101100";
	elsif I_DEC = std_logic_vector(to_unsigned(213, 8)) then
		OP_DEC <= "101101";
	elsif I_DEC = std_logic_vector(to_unsigned(214, 8)) then
		OP_DEC <= "101100";
	elsif I_DEC = std_logic_vector(to_unsigned(215, 8)) then
		OP_DEC <= "101101";
	elsif I_DEC = std_logic_vector(to_unsigned(216, 8)) then
		OP_DEC <= "101100";
	elsif I_DEC = std_logic_vector(to_unsigned(217, 8)) then
		OP_DEC <= "101101";
	elsif I_DEC = std_logic_vector(to_unsigned(218, 8)) then
		OP_DEC <= "101100";
	elsif I_DEC = std_logic_vector(to_unsigned(219, 8)) then
		OP_DEC <= "101101";
	elsif I_DEC = std_logic_vector(to_unsigned(220, 8)) then
		OP_DEC <= "101100";
	elsif I_DEC = std_logic_vector(to_unsigned(221, 8)) then
		OP_DEC <= "101101";
	elsif I_DEC = std_logic_vector(to_unsigned(222, 8)) then
		OP_DEC <= "101100";
	elsif I_DEC = std_logic_vector(to_unsigned(223, 8)) then
		OP_DEC <= "101101";
	elsif I_DEC = std_logic_vector(to_unsigned(224, 8)) then
		OP_DEC <= "101110";
	elsif I_DEC = std_logic_vector(to_unsigned(225, 8)) then
		OP_DEC <= "101111";
	elsif I_DEC = std_logic_vector(to_unsigned(226, 8)) then
		OP_DEC <= "101110";
	elsif I_DEC = std_logic_vector(to_unsigned(227, 8)) then
		OP_DEC <= "101111";
	elsif I_DEC = std_logic_vector(to_unsigned(228, 8)) then
		OP_DEC <= "101110";
	elsif I_DEC = std_logic_vector(to_unsigned(229, 8)) then
		OP_DEC <= "101111";
	elsif I_DEC = std_logic_vector(to_unsigned(230, 8)) then
		OP_DEC <= "101110";
	elsif I_DEC = std_logic_vector(to_unsigned(231, 8)) then
		OP_DEC <= "101111";
	elsif I_DEC = std_logic_vector(to_unsigned(232, 8)) then
		OP_DEC <= "101110";
	elsif I_DEC = std_logic_vector(to_unsigned(233, 8)) then
		OP_DEC <= "101111";
	elsif I_DEC = std_logic_vector(to_unsigned(234, 8)) then
		OP_DEC <= "101110";
	elsif I_DEC = std_logic_vector(to_unsigned(235, 8)) then
		OP_DEC <= "101111";
	elsif I_DEC = std_logic_vector(to_unsigned(236, 8)) then
		OP_DEC <= "101110";
	elsif I_DEC = std_logic_vector(to_unsigned(237, 8)) then
		OP_DEC <= "101111";	
	elsif I_DEC = std_logic_vector(to_unsigned(238, 8)) then
		OP_DEC <= "101110";	
	elsif I_DEC = std_logic_vector(to_unsigned(239, 8)) then
		OP_DEC <= "101111";	
	elsif I_DEC = std_logic_vector(to_unsigned(240, 8)) then
		OP_DEC <= "110000";	
	elsif I_DEC = std_logic_vector(to_unsigned(241, 8)) then
		OP_DEC <= "110001";	
	elsif I_DEC = std_logic_vector(to_unsigned(242, 8)) then
		OP_DEC <= "110010";	
	elsif I_DEC = std_logic_vector(to_unsigned(243, 8)) then
		OP_DEC <= "110011";	
	elsif I_DEC = std_logic_vector(to_unsigned(244, 8)) then
		OP_DEC <= "110100";	
	elsif I_DEC = std_logic_vector(to_unsigned(245, 8)) then
		OP_DEC <= "110101";	
	elsif I_DEC = std_logic_vector(to_unsigned(246, 8)) then
		OP_DEC <= "110110";	
	elsif I_DEC = std_logic_vector(to_unsigned(247, 8)) then
		OP_DEC <= "110111";	
	elsif I_DEC = std_logic_vector(to_unsigned(248, 8)) then
		OP_DEC <= "111000";	
	elsif I_DEC = std_logic_vector(to_unsigned(249, 8)) then
		OP_DEC <= "111001";	
	elsif I_DEC = std_logic_vector(to_unsigned(250, 8)) then
		OP_DEC <= "111010";	
	elsif I_DEC = std_logic_vector(to_unsigned(251, 8)) then
		OP_DEC <= "111011";	
	elsif I_DEC = std_logic_vector(to_unsigned(252, 8)) then
		OP_DEC <= "111100";	
	elsif I_DEC = std_logic_vector(to_unsigned(253, 8)) then
		OP_DEC <= "111101";	
	elsif I_DEC = std_logic_vector(to_unsigned(254, 8)) then
		OP_DEC <= "111110";	
	elsif I_DEC = std_logic_vector(to_unsigned(255, 8)) then
		OP_DEC <= "111111";
	end if;
	end process OPDEC;
------------------------------------------------------------------------------------------------------------------------
	NDEC : process(I_DEC)--El proceso correspondiente a N_DEC
	
	begin
	N_DEC <= "000";--En todos los casos menos los pedidos se manda 000 a N_DEC

	for I in 16 to 63 loop--Si es uno de los casos que no es una rotacion toma los bits del 3 al 1 de la entrada y los manda al N_DEC
		if I_DEC = std_logic_vector(to_unsigned(I, 8)) then N_DEC <= I_DEC(3 downto 1);
		end if;
	end loop;
	
	for J in 64 to 95 loop--Si es uno de rotación manda a N_DEC un 0 concatenado con los bits del 2 a 1 de la entrada.
	if I_DEC = std_logic_vector(to_unsigned(J,8)) then N_DEC <= '0' & I_DEC(2 DOWNTO 1);
	end if;
	end loop;
	
	for K in 208 to 239 loop--Si es uno de los casos que no es una rotacion toma los bits del 3 al 1 de la entrada y los manda al N_DEC
		if I_DEC = std_logic_vector(to_unsigned(K, 8)) then N_DEC <= I_DEC(3 downto 1);
		end if;
		end loop;	
		
	end process NDEC;
---------------------------------------------------------------------------------------------------------------------------------
	SDEC : process(I_DEC)--Proceso de S_DEC
	begin
	S_DEC <= "0000";--Manda 0 a la salida a menos que sea un caso branch, en ese caso manda los bits del 3 al 0 de la entrada.
	
	for I in 112 to 207 loop
		if I_DEC = std_logic_vector(to_unsigned(I, 8)) then S_DEC <= I_DEC(3 downto 0);
		end if;
		end loop;
	end process SDEC;
---------------------------------------------------------------------------------------------------------------------------------
	ACC_DEC <= I_DEC(0);--Toma unicamente el ultimo valor de la entrada y lo manda a la salida
---------------------------------------------------------------------------------------------------------------------------------
end Behavioral;

