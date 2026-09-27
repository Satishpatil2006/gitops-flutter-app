import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GitOps Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const GitOpsHomePage(),
    );
  }
}

class GitOpsHomePage extends StatelessWidget {
  const GitOpsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GitOps Flutter App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.cloud_done,
                size: 100,
              ),

              const SizedBox(height: 25),

              const Text(
                'GitOps Flutter App v2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'Successfully deployed using GitOps',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 30),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'Deployment Information',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 20),

                      _infoRow(
                        Icons.flutter_dash,
                        'Frontend',
                        'Flutter Web',
                      ),

                      _infoRow(
                        Icons.code,
                        'Source',
                        'GitHub',
                      ),

                      _infoRow(
                        Icons.build,
                        'CI/CD',
                        'GitHub Actions',
                      ),

                      _infoRow(
                        Icons.inventory_2,
                        'Container',
                        'Docker',
                      ),

                      _infoRow(
                        Icons.cloud,
                        'Registry',
                        'Docker Hub',
                      ),

                      _infoRow(
                        Icons.account_tree,
                        'GitOps',
                        'Argo CD',
                      ),

                      _infoRow(
                        Icons.dns,
                        'Platform',
                        'Kubernetes',
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(),
                ),
                child: const Text(
                  'VERSION 2.0',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Flutter → GitHub → GitHub Actions → '
                'Docker Hub → Argo CD → Kubernetes',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _infoRow(
    IconData icon,
    String title,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 28),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}          
