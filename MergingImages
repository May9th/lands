 /**
     * 이미지 파일을 두개로 합쳐준다. (결제 완료시 바코드 이미지 삽입에 사용)
     * @param strBarcodePath
     * @return strImgPath 바코드와 배경 이미지가 합쳐진 이미지
     */
    public static String mergeImages(String strBarcodePath, String strQrcodePath, String strCouponPinCode, int intBarcodeWidth)
    {
    	try
    	{
    		//합칠 두개의 이미지를 불러온다.    		
    		strBarcodePath = strBarcodePath.replaceAll("/", "\\\\\\\\");
    		
    		BufferedImage biBackgroundImg = ImageIO.read(new File("C:\\Service\\Data\\LixingData\\upload\\qrcode\\cashbee.png"));
    		BufferedImage biBarcodeImg = ImageIO.read(new File(strBarcodePath));

    		//바코드 밑에 들어갈 숫자 폰트 설정
    		Font font = new Font("Gungsuh", Font.BOLD, 15);
    		FontRenderContext frc = new FontRenderContext(null, true, true);
    		
    		String strCouponId = strCouponPinCode.replaceAll("-", " ");

    		//바코드 밑에 들어갈 폰트의 가운데 정렬을 위해서 rectangle 생성
    		Rectangle2D rectangle = font.getStringBounds(strCouponId, frc);
    		
    		int intTextHeight = (int)rectangle.getHeight();
    		
    		int intWidth = Math.max(intBarcodeWidth, biBackgroundImg.getWidth());
    		int intHeight = biBarcodeImg.getHeight() + biBackgroundImg.getHeight() + intTextHeight; //세개의 이미지 높이의 합이 필요
    		
    		BufferedImage biMergedImage = new BufferedImage(intWidth, intHeight, BufferedImage.TYPE_INT_RGB);
    		
    		//2개의 이미지와 바코드 숫자 합치기 시작
    		Graphics2D graphics = (Graphics2D) biMergedImage.getGraphics();
    		
    		graphics.setBackground(Color.WHITE);
    		graphics.setPaint(Color.WHITE);
    		graphics.setColor(Color.WHITE);
    		//두개의 이미지를 그려준다.
    		graphics.drawImage(biBackgroundImg, 0, 0, null);
    		graphics.drawImage(biBarcodeImg, 0, biBackgroundImg.getHeight(), null);
    		
    		//바코드 숫자 출력
    		FontMetrics fontMetrics = graphics.getFontMetrics(font);  	//font 가운데 정렬
    		int intTextMetrics = fontMetrics.stringWidth(strCouponId);	//font 가운데 정렬
    		graphics.setFont(font);
    		graphics.drawString(strCouponId, 155/2 - intTextMetrics/2 , biBarcodeImg.getHeight()+biBackgroundImg.getHeight()+intTextHeight);
    		
    		// \\ <- 두개를 넣기 위해서는 \\\\\\\\ 총 8개의 백슬러쉬가 필요함
    		strQrcodePath = strQrcodePath.replaceAll("/", "\\\\\\\\");
    		
			File flDir = new File(strQrcodePath);
			if(flDir.exists() == false) flDir.mkdirs();
			
			String strImgUrl = strQrcodePath + "\\mergedImage" + strCouponPinCode+ ".jpeg";
			
			mStatLogger.debug("Merged Image Path : " + strImgUrl);
			
    		ImageIO.write(biMergedImage, "jpeg", new File(strImgUrl));
    		
    		return strImgUrl;
    	}
    	catch(IOException ioe)
    	{
    		ioe.printStackTrace();
    		return null;
    	}
    }
