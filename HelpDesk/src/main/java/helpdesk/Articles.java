package helpdesk;

public class Articles {
	
private int articleId;
	
	private String atitle;
	private String adescription;
	private String aauthor;
	public Articles(int articleId, String atitle, String adescription, String aauthor) {
		super();
		this.articleId = articleId;
		this.atitle = atitle;
		this.adescription = adescription;
		this.aauthor = aauthor;
	}
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public String getAtitle() {
		return atitle;
	}
	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}
	public String getAdescription() {
		return adescription;
	}
	public void setAdescription(String adescription) {
		this.adescription = adescription;
	}
	public String getAauthor() {
		return aauthor;
	}
	public void setAauthor(String aauthor) {
		this.aauthor = aauthor;
	}

}
