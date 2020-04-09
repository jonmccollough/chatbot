package com.techelevator.authentication;

import java.sql.SQLException;
import java.util.List;

import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;

import com.techelevator.model.JDBCMessageDao;
import com.techelevator.model.Message;
import com.techelevator.model.MessageDao;


public class ApiIntegrationTests {

	private static SingleConnectionDataSource dataSource;

	private MessageDao messageDao;
	
	JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

	@BeforeClass
	public static void setupDataSource() {
		dataSource = new SingleConnectionDataSource();
		dataSource.setUrl("jdbc:postgresql://localhost:5432/chatbot");
		dataSource.setUsername("postgres");
		dataSource.setPassword("postgres1");

		dataSource.setAutoCommit(false);

	}
	
	@AfterClass
	public static void closeDataSource() throws SQLException {
		dataSource.destroy();
	}
	
	@Before
	public void setup() {
		messageDao = new JDBCMessageDao(dataSource);
	}
	
	
	//tests the search by keyword method
	@Test
	public void searchByKeywordReturnsCorrectString() {
		Message pathway = messageDao.searchByKeyword("pathway");
		Assert.assertNotNull(pathway);
		Assert.assertEquals("Alright, what do you need help with in pathway?", pathway.getResponse());
	}

	@Test
	public void searchWithInvalidKeywordReturnsNotice() {
		Message fake = messageDao.searchByKeyword("blargh");
		Assert.assertNotNull(fake);
		Assert.assertEquals("Keyword not recognized.", fake.getResponse());
	}
	
	@Test
	public void canGenerateACompleteKeywordList() {
		List<String> allKeywords = messageDao.listAvailableKeywords();
		Assert.assertNotNull(allKeywords.get(0));
		Assert.assertNotNull(allKeywords.get(12));
		Assert.assertNotNull(allKeywords.get(10));
		Assert.assertNotNull(allKeywords.get(6));
	}
	
	@Test
	public void canCheckForAKeywordInAString() {
		String containsPathway = "Hey this is a string that contains the word pathway.";
		Assert.assertTrue(messageDao.containsAKeyword(containsPathway));
		String containsNothing = "";
		Assert.assertFalse(messageDao.containsAKeyword(containsNothing));
	}
	
	@Test
	public void scanStringMethodPutsInputDownAndWithoutSpaces() {
		String testString = "P  A  T   H W  A Y";
		List<String> results = messageDao.scanStringForKeywords(testString);
		Assert.assertEquals("pathway", results.get(0));
	}
	
	@Test
	public void scanStringGrabsMultipleStrings() {
		String testString = "pathway AND AND AND WOW resume AND attire";
		List<String> results = messageDao.scanStringForKeywords(testString);
		Assert.assertEquals(3, results.size());
	}
	
	@Test
	public void scanStringReturnsBlankListIfNoneFound() {
		String testString = "!!!pferfe!!!a??ergerg?t%%%hgrgrgrg###w@@@a*$&y";
		List<String> results = messageDao.scanStringForKeywords(testString);
		Assert.assertEquals(0, results.size());	
	}
	
}
