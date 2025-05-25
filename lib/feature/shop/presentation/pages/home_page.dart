import 'package:fake_store/core/components/app_text.dart';
import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart' hide Loading;
import 'package:fake_store/feature/shop/presentation/bloc/shop/shop_bloc.dart';
import 'package:fake_store/feature/shop/presentation/widgets/product_card.dart';
import 'package:fake_store/feature/shop/presentation/widgets/shop_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<ShopBloc>().add(const ShopEvent.getProducts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ShopAppBar.main(
        height: 80.h,
        username: 'John Doe',
        onLogout: () {
          context.read<AuthBloc>().add(const AuthEvent.signOut());
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.title3('Fake Store'),
            SizedBox(height: 24.h),
            Expanded(
              child: BlocBuilder<ShopBloc, ShopState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  
                  if (state is ProductsLoaded) {
                    final products = state.products;
                    if (products.isEmpty) {
                      return const Center(child: Text('No products available'));
                    }
                    return ListView.separated(
                      itemCount: products.length,
                      separatorBuilder: (_, _) => SizedBox(height: 16.h),
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return ProductCard(
                          id: product.id.toString(),
                          title: product.title,
                          image: product.image,
                          price: product.price.toString(),
                          description: product.description,
                          rating: product.rating.rate.toString(),
                          category: product.category,
                          reviews: product.rating.count,
                        );
                      },
                    );
                  }
                  
                  if (state is Error) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(state.message),
                          SizedBox(height: 16.h),
                          ElevatedButton(
                            onPressed: () {
                              context.read<ShopBloc>().add(const ShopEvent.getProducts());
                            },
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    );
                  }
                  
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}