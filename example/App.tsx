import ExpoSeamMobileSdk from 'expo-seam-mobile-sdk';
import React, { useEffect, useState } from 'react';
import { SafeAreaView, ScrollView, Text, View, StyleSheet } from 'react-native';

export default function App() {
  const [result, setResult] = useState<any>(null);

  useEffect(() => {
    async function initializeSeamSDK() {
      try {
        const initResponse = await ExpoSeamMobileSdk.initializeSeam('seam_cst1xHF1qfvm_AjP71gjjTAUcDw1unxpZ4Msh', "bbd4d0ac-cc2c-4197-a670-6b3256b9bdc8");
        console.log('Seam SDK Initialized:', initResponse);
        setResult(initResponse);
      } catch (error) {
        console.error('Error initializing Seam SDK:', error);
      }
    }

    initializeSeamSDK();
  }, []);

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView>
        <Text style={styles.header}>SeamSDK Integration</Text>
        <View style={styles.group}>
          <Text style={styles.groupHeader}>Initialize result</Text>
          {result ? (
            <Text>Seam SDK initialized successfully</Text>
          ) : (
            <Text>Seam SDK is not initialized</Text>
          )}
        </View>
        <View style={styles.group}>
          <Text style={styles.groupHeader}>Method Result</Text>
          <Text>{JSON.stringify(result, null, 2)}</Text>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  header: {
    fontSize: 24,
    marginBottom: 20,
  },
  groupHeader: {
    fontSize: 20,
    marginBottom: 10,
  },
  group: {
    marginVertical: 20,
    padding: 20,
    backgroundColor: '#fff',
    borderRadius: 8,
  },
});
