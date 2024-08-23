package com.ace.util;

import java.util.HashMap;
import java.util.Map;

public class NodeMap {

	private Map<String, Integer> keymap = new HashMap<String, Integer>();
	private Map<String, Object> valuemap = new HashMap<String, Object>();
	
	
	public NodeMap() {
		for(int i=0; i<40; i++) {
			keymap.put("SEGMENT_"+i,i);
		}
	}
	
	
	public int getKey(String key) {
		return keymap.get(key);
	}
	
}
