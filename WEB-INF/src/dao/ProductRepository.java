package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
   private ArrayList<Product> listOfProducts = new ArrayList<Product>();
   private static ProductRepository instance = new ProductRepository();

   public static ProductRepository getInstance(){
	return instance;
   }
	public ProductRepository() {
		Product phone = new Product("P1234","CORTEZ", 800000);
		phone.setDescription("나이키 코르테즈는 1972년 나이키 공동 창업자인 빌 바워만이 당시 그 어떤 신발보다 가볍고 편안하게 디자인한 신발입니다. 코르테즈는 순식간에 미국에서 가장 인기 있는 러닝화가 되었고, 대중문화 역사에 새겨진 확실한 아이콘으로 변모했습니다.");
		phone.setCategory("Shoes");
		phone.setManufacturer("NIKE");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        phone.setFilename("P1234.jpg");


        Product notebook = new Product("P1235","DUNK", 1500000);
		notebook.setDescription("하드우드를 위해 태어나 스트리트로 무대를 옮겨온 나이키 덩크 로우 레트로가 산뜻한 오버레이와 오리지널 팀 컬러로 돌아왔습니다. 신을수록 부드러워지는 멋진 룩의 프리미엄 가죽 갑피가 특징인 이 농구 아이콘은 80년대 분위기를 한껏 발산합니다. 여기에 현대의 풋웨어 기술로 21세기의 편안함을 구현했습니다.");
		notebook.setCategory("Shoes");
		notebook.setManufacturer("NIKE");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
        notebook.setFilename("P1235.jpg");


		Product tablet = new Product("P1236","AIR POS1", 900000);
		tablet.setDescription("빛이 그대로 살아 있는 나이키 에어 포스 1 '07은 농구 아이콘의 익숙한 디자인을 신선하게 재해석합니다. 산뜻한 가죽과 과감한 컬러, 딱 완벽할 만큼의 화려함으로 빛나는 존재감을 발휘해 보세요.");
		tablet.setCategory("Shoes");
		tablet.setManufacturer("NIKE");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
        tablet.setFilename("P1236.jpg");

		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
    	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
    public void addProduct(Product product) {
        listOfProducts.add(product);
       }
}
