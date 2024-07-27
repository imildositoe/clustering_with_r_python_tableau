import pandas as pd
import matplotlib
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans

matplotlib.use('TkAgg')
df = pd.DataFrame({'x': [12, 20, 28, 18, 29, 33, 24, 45, 45, 52, 51, 52, 55, 53,
                         55, 61, 64, 69, 72], 'y': [39, 36, 30, 52, 54, 46, 55, 59, 63, 70, 66, 63,
                                                    58, 23, 14, 8, 19, 7, 24]}
                  , columns=['x', 'y'])

# Create and fit the model
kmeans = KMeans(n_clusters=3).fit(df)

# Find the centroids of the clustering
centroids = kmeans.cluster_centers_
print("Centroids: ", centroids)

# Get the associated cluster for each data record
print("Associated cluster for each data point: ", kmeans.labels_)

# Display the clusters contents and their centroids
plt.scatter(df['x'], df['y'], c=kmeans.labels_.astype(float), s=50, alpha=0.5)
plt.scatter(centroids[:, 0], centroids[:, 1], c='red', s=50)
plt.show()
