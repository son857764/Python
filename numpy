import numpy as np
#các phần tử trong mảng bị ép cùng 1 kiểu type dữ liệu 

--------------------------------------------------------------

#tạo mảng từ 1 list
c = np.array([1, 6, 9, 12])
==>  [ 1  6  9 12]
#c = np.array([1, 2, 3, 4], dtype='float32')
# ==>  [1. 2. 3. 4.]


# Tạo mảng có 5 phần tử mà mọi giá trị đều bằng 0
C = np.zeros(5, dtype=int)
==> [0 0 0 0 0]


# Tạo mảng đa chiều kích thước 5x5 mà mọi giá trị đều = 1
C =np.ones((5, 5), dtype=float)
==> [[1. 1. 1. 1. 1.]
 [1. 1. 1. 1. 1.]
 [1. 1. 1. 1. 1.]
 [1. 1. 1. 1. 1.]
 [1. 1. 1. 1. 1.]]
 
 
 # Tạo mảng đa chiều kích thước 3x3 mà mọi giá trị đều = 100
C=np.full((3, 3), 100)
 ==>  [[100 100 100]
 [100 100 100]
 [100 100 100]]
 
 
 #Tạo mảng 3x3 phân bố đều với các phần tử có giá trị ngẫu nhiên giữa 0 và 1
 C = np.random.random((3, 3))
  ==>   [[0.59236841 0.03668261 0.69657645]
 [0.77571043 0.19351049 0.66265747]
 [0.54583489 0.40724695 0.79059509]]
 
 
 #Tạo một mảng 3x3 với các phần tử ngẫu nhiên được phân phối chuẩn với giá trị trung bình là 0 và độ lệch chuẩn 1
 C = np.random.normal(0, 1, (3, 3))
 ==>  [ 0.58069184, 0.00102128, 0.66747731],
[ 0.92574049, -0.24678111, 0.6781257 ],
[-0.60611321, -0.54344727, 0.67134354]]

#Tạo một mảng 3x3 các số nguyên ngẫu nhiên trong khoảng [0, 10)
C = np.random.randint(0, 10, (3, 3))
==> [[6, 2, 4],
[9, 8, 8],
[9, 1, 5]]

 ---------------------------------------------------------------

#tạo mảng tuyến tính từ a đến b với bước nhảy c có khoảng cách đều nhau
c = np.arange(2,50,5)
==> [ 2  7 12 17 22 27 32 37 42 47]


# np.linspace(start, stop, num=50, endpoint=True, retstep=False) mảng cách đều, nếu endpoint = False thì stop + 1, khoảng cách cũng chia đều cho stop +1 
C = np.linspace(1, 10) # mặc định num = 50 giá trị từ 1 đến 10 (float)
C = np.linspace(1, 10, 7) # 7 giá trị từ 1 đến 10


#Một tham số thú vị đó là “retstep”. Nếu tham số tùy chọn 'retstep' được thiết lập,
#hàm cũng sẽ trả lại giá trị khoảng cách giữa các giá trị liền kề. Vì vậy, hàm sẽ trả về một tuple (‘ndarray', 'step'):
samples, spacing = np.linspace(1, 10, retstep=True)
print ("spacing = ",spacing)
==>  spacing =  0.1836734693877551
samples, spacing = np.linspace(1, 10, 20, endpoint=True, retstep=True)
print ("spacing = ",spacing)
==>  spacing =  0.47368421052631576
samples, spacing = np.linspace(1, 10, 20, endpoint=False, retstep=True)
print ("spacing = ",spacing, "samples", samples)
==>  spacing =  0.45


-----------------------------------------------------------------------


#Tạo ma trận đơn vị kích thước 3x3
C = np.eye(3)
==>  [1., 0., 0.],
[0., 1., 0.],
[0., 0., 1.]]



#Tạo mảng rỗng gồm 5 phần tử, giá trị của 5 phần tử này có thể là bất cứ giá trị nào đã lưu trên bộ nhớ trước đó:
C = np.empty(5)
==>  [0. , 0.5, 1. , 1.5, 2. ]


