-- Tạo thành công
USE ONLINE_SHOP
Go
-- Kết quả ra đoạn danh sách 10 hàng, đầy đủ các tình trạng
SELECT *
FROM KHACHHANG
WHERE TinhTrang = N'bị hủy' --  kq: 2 hàng do đã có điều kiện lọc

IF OBJECT_ID('uspCau1', 'P') IS NOT NULL
	DROP PROC uspCau1
GO
	CREATE PROC uspCau1
		@a int = 0 , --default 
		@b int =0
	AS
		RETURN @a+@b
		
	GO
	-- GOI--
	DECLARE @x int =10 , @y int = 5 , @tong int =0
	EXEC @tong = uspCau1 @x , @y
	PRINT N'Tổng 2 số: ' + CAST ( @x AS varchar) + ' + ' + CAST (@y AS varchar) +' = ' + CAST ( @tong AS varchar )
	
	
	IF OBJECT_ID('uspCau2', 'P') IS NOT NULL
	DROP PROC uspCau2
GO
	CREATE PROC uspCau2
		 @a float =0, -- dung  cho so thuc 
		 @b float = 0,
		 @tong float OUT
	AS
		SET @tong = @a+ @b
		
	GO
	-- GOI--
	
	DECLARE @x float =4.2 , @y float = 4.5 , @tong float =0
	EXEC uspCau2 @x , @y , @tong OUT
	PRINT N'Tổng 2 số: ' + CAST ( @x AS varchar) + ' + ' + CAST (@y AS varchar) +' = ' + CAST ( @tong AS varchar )