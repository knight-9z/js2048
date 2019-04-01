//��̬��ʾ���ɵ�������ķ���
function showNumberWithAnimation(generateX,generateY,generateNumber){
	var gridNumber = $("#grid-number-"+generateX+"-"+generateY);
	gridNumber.css("background-color",getGridNumberBackgroundColor(generateNumber));
	gridNumber.css("color",getGridNumberColor(generateNumber));
	gridNumber.text(generateNumber);
	gridNumber.animate({
	   width:"100px",
	   height:"100px",
	   top:getPosTop(generateX,generateY),
	   left:getPosLeft(generateX,generateY)
	},50);
	
}

//�����ƶ�����
function showMoveAnimation(fromX,fromY,toX,toY){
	var gridNumber = $("#grid-number-"+fromX+"-"+fromY);
	gridNumber.animate({
	   top:getPosTop(toX,toY),
	   left:getPosLeft(toX,toY)
	},200);
}

//�ж��Ƿ���������ƶ��ķ���
function canMoveLeft(board){
	for(var i=0;i<4;i++){
		for(var j=0;j<4;j++){
			if(board[i][j]!=0){
				if(board[i][j-1]==0 || board[i][j-1]==board[i][j] ){
					return true;
				}
			}
		}
	}
	return false;
}

//�����Ƶ�ʱ���ж�����Ƿ��������Ƿ���������ƶ�
function noBlokHorizontalCol(row,col1,col2,board){
	for(var i=col1+1;i<col2;i++){
		if(board[row][i]!=0){
			return false;
		}
	}
	return true;
}

//�ж��Ƿ���������ƶ��ķ���
function canMoveUp(board){
	for(var i=1;i<4;i++){
		for(var j=0;j<4;j++){
			if(board[i][j]!=0){
				if(board[i-1][j]==0 || board[i-1][j]==board[i][j]){
					return true;
				}
			}
		}
	}
	return false;
}

//�����ƶ���ʱ���ж��ϱ��Ƿ������ֿ��������ƶ��ķ���
function noBlokHorizontalRow(row1,row2,col,board){
	for(var i=row1+1;i<row2;i++){
		if(board[i][col]!=0){
			return false;
		}
	}
	return true;
}

//�ж��Ƿ���������ƶ��ķ���
function canMoveRight(board){
	for(var i=0;i<4;i++){
		for(var j=2;j>=0;j--){
			if(board[i][j]!=0){
				if(board[i][j+1]==0 ||board[i][j+1]==board[i][j]){
					return true;
				}
			}
		}
	}
	return false;
}

//�ж��Ƿ���������ƶ��ķ�������
function canMoveDown(board){
	for(var i=2;i>=0;i--){
		for(var j=0;j<4;j++){
			if(board[i][j]!=0){
				if(board[i+1][j]==0 || board[i+1][j]==board[i][j]){
					return true;
				}
			}
		}
	}
	
	return false;
}
